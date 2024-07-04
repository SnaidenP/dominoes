import 'package:dominoes/src/game/database/round.dart';
import 'package:isar/isar.dart';

part 'game.g.dart';

@collection
class Game {
  Id id = Isar.autoIncrement;

  String? teamAname;
  int? totalScoreA;

  String? teamBname;
  int? totalScoreB;

  @ignore
  List<Round?> rounds = [];
}
