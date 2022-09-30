import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_game/models/game_model.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    required List<GameModel> list,
    required String message,
  }) = _GameState;

  factory GameState.initial() => const GameState(
        list: [],
        message: '',
      );
}

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.boxTapped({required GameModel model}) = _BoxTapped;
}
