import 'package:isar/isar.dart';

part 'partidas.g.dart';

@collection
class Partidas {
  Id id = Isar.autoIncrement;
  String? nombreEquipoA;
  String? nombreEquipoB;
  int? puntajeEquipoA;
  int? puntajeEquipoB;
  int? limite;
}
