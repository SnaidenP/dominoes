import 'package:bloc/bloc.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(GameInitial());
  final isar = Isar.getInstance();

  void loadGame() {
    final game = isar?.games.isar.collection<Game>().where().findFirstSync();
    if (game == null) {
      emit(const GameError('No game found'));
    } else {
      emit(GameLoaded(game));
    }
    emit(GameLoaded(Game()));
  }
}
