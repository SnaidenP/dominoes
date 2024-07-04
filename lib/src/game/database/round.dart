import 'package:isar/isar.dart';

part 'round.g.dart';

@collection
class Round {
  Id id = Isar.autoIncrement;

  String? teamAname;
  int? teamAscore;

  String? teamBname;
  int? teamBscore;
}
