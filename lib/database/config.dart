import 'package:shared_preferences/shared_preferences.dart';

Future<void> createInitialConfig() async {
  final prefs = await SharedPreferences.getInstance();

  final equipoA = prefs.getString('nombreEquipoA');
  final equipoB = prefs.getString('nombreEquipoB');

  if (equipoA == null || equipoB == null) {
    await prefs.setString('nombreEquipoA', 'Ellos');
    await prefs.setString('nombreEquipoB', 'Nosotros');
  }
}
