import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wear_os_connectivity/flutter_wear_os_connectivity.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final FlutterWearOsConnectivity _connectivity = FlutterWearOsConnectivity();

  WearOsDevice? _selectedDevice;
  WearOSMessage? _currentMessage;
  DataItem? _dataItem;

  final List<StreamSubscription<WearOSMessage>> _messageSubscriptions = [];
  final List<StreamSubscription<List<DataEvent>>> _dataEventsSubscriptions = [];
  StreamSubscription<CapabilityInfo>? _connectedDeviceCapabilitySubscription;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, _configureWear);
  }

  @override
  void dispose() {
    _connectedDeviceCapabilitySubscription?.cancel();
    _connectivity.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    try {
      if (_selectedDevice == null) {
        return;
      }

      final list = _counter.toString().codeUnits;
      final bytes = Uint8List.fromList(list);
      _connectivity.sendMessage(bytes, deviceId: _selectedDevice!.id, path: '/sample-message').then((value) => debugPrint);
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 30),
            const Text(
              'Received message:',
            ),
            Text(
              _currentMessage == null ? '' : String.fromCharCodes(_currentMessage!.data).toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  FutureOr<void> _configureWear() async {
    try {
      await _connectivity.configureWearableAPI();
      final devices = await _connectivity.getConnectedDevices();

      if (devices.isEmpty) {
        print('No devices connected');
        return;
      }
      _selectedDevice = devices.first;

      final allData = _connectivity.getAllDataItems();

      // Capability subscription
      _connectedDeviceCapabilitySubscription = _connectivity
          .capabilityChanged(
        capabilityPathURI: Uri(
          scheme: 'wear',
          host: '*',
          path: '/flutter_smart_watch_connected_nodes',
        ),
      )
          .listen((event) {
        if (event.associatedDevices.isEmpty) {
          setState(() {
            _selectedDevice = null;
          });
        }
      });

      // Message subscription
      _messageSubscriptions.add(_connectivity
          .messageReceived(
              pathURI: Uri(
        scheme: 'wear',
        host: _selectedDevice?.id,
        path: '/wearos-message-path',
      ))
          .listen((event) {
        setState(() {
          _currentMessage = event;
        });
      }));

      _dataEventsSubscriptions.add(_connectivity.dataChanged().listen((event) {
        setState(() {
          _dataItem = event[0].dataItem;
        });
      }));
    } on PlatformException catch (e) {
      debugPrint(e.message);
    }
  }
}
