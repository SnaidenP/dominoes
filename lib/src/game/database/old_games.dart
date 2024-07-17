import 'package:dominoes/src/game/database/game.dart';
import 'package:isar/isar.dart';

part 'old_games.g.dart';

@collection
class OldGames {
  Id id = Isar.autoIncrement;

  List<int> gameIds = [];
}
