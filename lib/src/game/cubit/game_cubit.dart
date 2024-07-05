import 'dart:developer' as dev;
import 'package:bloc/bloc.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit(this.isar) : super(GameInitial());
  final Isar isar;

  void loadGame() {
    final game = isar.games.isar.collection<Game>().where().findFirstSync();
    if (game == null) {
      emit(const GameError('No game found'));
    } else {
      emit(GameLoaded(game));
    }
  }

  Future<void> deleteRound(int index) async {
    final game = isar.games.isar.collection<Game>().where().findFirstSync();
    if (game == null) {
      emit(const GameError('No game found'));
    } else {
      await isar.writeTxn(() async {
        final newListOfRounds = [...game.rounds]..removeAt(index);
        game.rounds = newListOfRounds;
        await isar.games.put(game);
      });
      emit(GameLoaded(game));
    }
  }

  Future<void> newGame() async {
    final gameActually =
        isar.games.isar.collection<Game>().where().findFirstSync();
    if (gameActually == null) {
      emit(const GameError('No game found'));
    } else {
      await isar.writeTxn(() async {
        gameActually.rounds = [];
        await isar.games.put(gameActually);
      });
      emit(GameLoaded(gameActually));
    }
  }

  Future<void> addRound(int pointsA, int pointsB) async {
    final game = isar.games.isar.collection<Game>().where().findFirstSync();
    if (game == null) {
      emit(const GameError('No game found'));
    } else {
      await isar.writeTxn(() async {
        final newRound = Round()
          ..teamAname = game.teamAname
          ..teamBname = game.teamBname
          ..teamAscore = pointsA
          ..teamBscore = pointsB;
        final newListOfRounds = [...game.rounds, newRound];
        game.rounds = newListOfRounds;
        await isar.games.put(game);
      });

      dev.log('List of rounds ${game.rounds.length}: ${game.rounds}');
      emit(GameLoaded(game));
    }
  }
}
