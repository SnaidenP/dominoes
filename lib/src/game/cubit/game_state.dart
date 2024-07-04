part of 'game_cubit.dart';

sealed class GameState extends Equatable {
  const GameState();

  @override
  List<Object> get props => [];
}

final class GameInitial extends GameState {}

final class GameLoaded extends GameState {
  const GameLoaded(this.game);
  final Game game;

  @override
  List<Object> get props => [game];
}

final class GameError extends GameState {
  const GameError(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}
