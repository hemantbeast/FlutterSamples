import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_game/providers/game_provider.dart';
import 'package:test_game/providers/game_state.dart';
import 'package:test_game/utils/extensions.dart';

class GamePage extends HookConsumerWidget {
  final int number;

  const GamePage({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(gameProvider(number));
    final notifier = ref.read(gameProvider(number).notifier);

    listenCallback(context, ref);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      body: GridView.builder(
        itemCount: state.list.length,
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              notifier.mapEvent(GameEvent.boxTapped(model: state.list[index]));
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: state.list[index].boxColor?.toColor(),
                border: Border.all(
                  color: const Color(0xFF3F51B5),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          );
        },
      ),
    );
  }

  void listenCallback(BuildContext context, WidgetRef ref) {
    ref.listen(gameProvider(number), (previous, next) {
      if (next.message.isNotEmpty) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Alert'),
              content: Text(next.message),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                )
              ],
            );
          },
        );
      }
    });
  }
}
