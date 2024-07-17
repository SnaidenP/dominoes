import 'dart:developer' as dev;
import 'package:bloc/bloc.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'game_state.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit(this.isar) : super(GameInitial());
  final Isar isar;

  Future<void> loadGame() async {
    final games = await isar.games.where().findAll();
    if (games.isEmpty) {
      emit(const GameError('No game found'));
    } else {
      final latestGame = games.reduce((a, b) => a.id > b.id ? a : b);
      emit(GameLoaded(latestGame));
    }
  }

  Future<void> deleteRound(int index) async {
    final game = await isar.games.where().findAll();
    if (game.isEmpty) {
      emit(const GameError('No game found'));
    } else {
      final latestGame = game.reduce((a, b) => a.id > b.id ? a : b);
      await isar.writeTxn(() async {
        final newListOfRounds = [...latestGame.rounds]..removeAt(index);
        latestGame.rounds = newListOfRounds;
        await isar.games.put(latestGame);
      });
      emit(GameLoaded(latestGame));
    }
  }

  Future<void> newGame() async {
    final existingGames = await isar.games.where().findAll();
    final lastGameId = existingGames.isNotEmpty
        ? existingGames.reduce((a, b) => a.id > b.id ? a : b).id
        : 0;

    String? teamAname = 'Team A';
    String? teamBname = 'Team B';

    if (existingGames.isNotEmpty) {
      final lastGame = existingGames.reduce((a, b) => a.id > b.id ? a : b);
      teamAname = lastGame.teamAname;
      teamBname = lastGame.teamBname;
    }

    final game = Game()
      ..id = lastGameId + 1
      ..date = DateTime.now()
      ..teamAname = teamAname
      ..teamBname = teamBname
      ..limit = 100;
    dev.log('New game: $game, id: ${game.id}');

    await isar.writeTxn(() async {
      await isar.games.put(game);
    });

    emit(GameLoaded(game));
  }

  Future<void> addRound(int pointsA, int pointsB) async {
    final games = await isar.games.where().findAll();
    if (games.isEmpty) {
      emit(const GameError('No game found'));
    } else {
      final game = games.reduce((a, b) => a.id > b.id ? a : b);
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
