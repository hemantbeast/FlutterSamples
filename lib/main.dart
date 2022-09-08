import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:deep_link/routes/app_router.dart';
import 'package:deep_link/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Uri? _initialUrl;
  Uri? _currentUrl;
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();
    _initURIHandler();
    _incomingLinkHandler();
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRouter.initialRoute,
      navigatorKey: AppRouter.navigatorKey,
      onGenerateRoute: AppRouter.generateRoute,
      navigatorObservers: [NavigationHistoryObserver()],
    );
  }

  void _initURIHandler() async {
    try {
      final appLinks = AppLinks();
      final initialUrl = await appLinks.getInitialAppLink();
      // Use the initialUrl and warn the user if it is not correct,
      // but keep in mind it could be `null`.
      if (initialUrl != null) {
        debugPrint("Initial URI received $initialUrl");
        if (!mounted) {
          return;
        }
        setState(() {
          _initialUrl = initialUrl;

          if (_initialUrl != null) {
            switch (_initialUrl!.path) {
              case Routes.pageB:
                AppRouter.pushNamed(Routes.pageB);
                break;
              case Routes.pageC:
                AppRouter.pushNamed(Routes.pageB);
                AppRouter.pushNamed(Routes.pageC);
                break;
              case Routes.pageD:
                AppRouter.pushNamed(Routes.pageB);
                AppRouter.pushNamed(Routes.pageC);
                AppRouter.pushNamed(Routes.pageD);
                break;
            }
          }
        });
      } else {
        debugPrint("Null Initial URI received");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void _incomingLinkHandler() {
    final appLinks = AppLinks();
    _streamSubscription = appLinks.uriLinkStream.listen((Uri? uri) {
      if (!mounted) {
        return;
      }
      debugPrint('Received URI: $uri');
      setState(() {
        _currentUrl = uri;

        if (_currentUrl != null) {
          var history = NavigationHistoryObserver().history;
          var lastRouteName = NavigationHistoryObserver().history.last.settings.name;

          switch (_currentUrl!.path) {
            case Routes.pageA:
              if (lastRouteName != Routes.pageA) {
                AppRouter.popUntilRoot();
              }
              break;
            case Routes.pageB:
              if (lastRouteName != Routes.pageB) {
                if (history.any((page) => page.settings.name == Routes.pageB)) {
                  AppRouter.popUntil(Routes.pageB);
                } else {
                  AppRouter.pushNamed(Routes.pageB);
                }
              }
              break;
            case Routes.pageC:
              if (lastRouteName != Routes.pageC) {
                if (history.any((page) => page.settings.name == Routes.pageC)) {
                  AppRouter.popUntil(Routes.pageC);
                } else {
                  if (lastRouteName == Routes.pageA) {
                    AppRouter.pushNamed(Routes.pageB);
                  }
                  AppRouter.pushNamed(Routes.pageC);
                }
              }
              break;
            case Routes.pageD:
              if (lastRouteName == Routes.pageD) {
                return;
              }

              if (lastRouteName == Routes.pageA) {
                AppRouter.pushNamed(Routes.pageB);
                AppRouter.pushNamed(Routes.pageC);
              } else if (lastRouteName == Routes.pageB) {
                AppRouter.pushNamed(Routes.pageC);
              }
              AppRouter.pushNamed(Routes.pageD);
              break;
          }
        }
      });
    }, onError: (Object err) {
      if (!mounted) {
        return;
      }
      debugPrint('Error occurred: $err');
      setState(() {
        _currentUrl = null;
      });
    });
  }
}
