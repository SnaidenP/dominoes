import 'package:isar/isar.dart';

part 'game.g.dart';

@collection
class Game {
  Id id = Isar.autoIncrement;

  String? teamAname;
  String? teamBname;
  int? limit;

  List<Round> rounds = [];
}

@embedded
class Round {
  String? teamAname;
  String? teamBname;
  int? teamAscore;
  int? teamBscore;
}
