import 'package:isar/isar.dart';

part 'game.g.dart';

@collection
class Game {
  Id id = Isar.autoIncrement;
  DateTime? date;
  String? teamAname;
  String? teamBname;
  int? limit;

  List<Round> rounds = [];

  @override
  String toString() {
    return 'Game{teamAname: $teamAname, teamBname: $teamBname, limit: $limit, rounds: $rounds}';
  }

  Map<String, dynamic> toJson() => {
        'teamAname': teamAname,
        'teamBname': teamBname,
        'limit': limit,
        'rounds': rounds.map((round) => round.toJson()).toList(),
      };

  static Game fromJson(Map<String, dynamic> json) {
    return Game()
      ..teamAname = json['teamAname'] as String?
      ..teamBname = json['teamBname'] as String?
      ..limit = json['limit'] as int?
      ..rounds = (json['rounds'] as List)
          .map((e) => Round.fromJson(e as Map<String, dynamic>))
          .toList();
  }
}

@embedded
class Round {
  String? teamAname;
  String? teamBname;
  int? teamAscore;
  int? teamBscore;

  @override
  String toString() {
    return 'Round{teamAname: $teamAname, teamBname: $teamBname, teamAscore: $teamAscore, teamBscore: $teamBscore}';
  }

  Map<String, dynamic> toJson() => {
        'teamAname': teamAname,
        'teamBname': teamBname,
        'teamAscore': teamAscore,
        'teamBscore': teamBscore,
      };

  static Round fromJson(Map<String, dynamic> json) {
    return Round()
      ..teamAname = json['teamAname'] as String?
      ..teamBname = json['teamBname'] as String?
      ..teamAscore = json['teamAscore'] as int?
      ..teamBscore = json['teamBscore'] as int?;
  }
}
