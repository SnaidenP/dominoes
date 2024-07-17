import 'package:bloc/bloc.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:dominoes/src/game/database/old_games.dart';
import 'package:isar/isar.dart';
import 'dart:developer' as dev;

class OldGamesCubit extends Cubit<List<int>> {
  OldGamesCubit(this.isar) : super([]);
  final Isar isar;

  Future<void> fetchOldGamesIds() async {
    final oldGamesList = await isar.oldGames.where().findFirst();
    final allGameIds = oldGamesList?.gameIds ?? [];
    dev.log('All game ids: $allGameIds');
    emit(allGameIds);
  }

  Future<List<Game?>> fetchGames() async {
    final gameIds = state;
    print('Fetching games for IDs: $gameIds');
    final games = await isar.games.getAll(gameIds);
    print('Fetched games from DB: $games');
    return games;
  }

  Future<void> addGame(Game game) async {
    final oldGamesList = await isar.oldGames.where().findFirst();

    if (oldGamesList == null) {
      final oldGame = OldGames()..gameIds = [game.id];
      await isar.writeTxn(() async {
        await isar.oldGames.put(oldGame);
        await isar.games.put(game);
      });
      dev.log('Added new game with ID: ${game.id}');
      await fetchOldGamesIds();
      return;
    }

    final updatedGameIds = List<int>.from(oldGamesList.gameIds)..add(game.id);
    oldGamesList.gameIds = updatedGameIds;
    await isar.writeTxn(() async {
      await isar.oldGames.put(oldGamesList);
      await isar.games.put(game);
    });
    print('Updated game IDs list: $updatedGameIds');
    await fetchOldGamesIds();
  }
}
