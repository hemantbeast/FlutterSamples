import 'dart:collection';
import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_game/models/game_model.dart';
import 'package:test_game/providers/game_state.dart';
import 'package:test_game/utils/extensions.dart';

final gameProvider = StateNotifierProvider.autoDispose.family<GameNotifier, GameState, int>((ref, num) {
  return GameNotifier(ref: ref, number: num);
});

class GameNotifier extends StateNotifier<GameState> {
  final Ref ref;
  final int number;
  final Random random = Random();

  GameNotifier({required this.ref, required this.number}) : super(GameState.initial()) {
    setList();
  }

  mapEvent(GameEvent event) {
    event.map(boxTapped: (value) {
      boxClicked(value.model);
    });
  }

  setList() {
    var selectedValue = random.nextInt(number - 1);
    var list = List<GameModel>.generate(number, (i) {
      var model = GameModel(index: i, boxColor: '#FFE0E0E0');

      if (i == selectedValue) {
        model.boxColor = '#FF4CAF50';
      }
      return model;
    }).toList();

    state = state.copyWith(list: list);
  }

  boxClicked(GameModel model) {
    if (model.isDefault || model.isCompleted) {
      state = state.copyWith(message: 'Game Over');
      return;
    }

    model.boxColor = '#FFF44336';
    var list = state.list.toList();

    if (list.every((element) => element.isCompleted)) {
      state = state.copyWith(message: 'Game Over');
      return;
    }

    if (list.any((element) => element.isDefault)) {
      var excludeValues = HashSet<int>();

      for (int i = 0; i < list.length; i++) {
        if (list[i].isCompleted) {
          excludeValues.add(list[i].index);
        }
      }

      if (model.index - 3 >= 0 && !excludeValues.contains(model.index - 3)) {
        excludeValues.add(model.index - 3);
      }

      if (model.index + 3 <= list.length - 1 && !excludeValues.contains(model.index + 3)) {
        excludeValues.add(model.index + 3);
      }

      var nextIndex = random.getRandomExcluding(list.length - 1, excludeValues);

      if (nextIndex != -1) {
        list[nextIndex].boxColor = '#FF4CAF50';
        state = state.copyWith(list: list);
      } else {
        if (list.any((e) => e.isDefault && e.index != model.index - 3 && e.index != model.index + 3)) {
          var item = list.firstWhere((e) => e.isDefault && e.index != model.index - 3 && e.index != model.index + 3);
          item.boxColor = '#FF4CAF50';

          state = state.copyWith(list: list);
        } else {
          state = state.copyWith(message: 'Game Over');
        }
      }
    } else {
      state = state.copyWith(message: 'Game Over');
    }
  }
}
