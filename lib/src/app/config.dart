import 'dart:developer' as dev;
import 'package:dominoes/src/game/database/game.dart';
import 'package:dominoes/src/game/database/old_games.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

Future<Isar> initialConfig() async {
  if (Isar.getInstance() != null) {
    dev.log('Isar instance already exists, name: ${Isar.getInstance()!.name}');
    FlutterNativeSplash.remove();
    return Isar.getInstance()!;
  } else {
    dev.log('Creating Isar instance');
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [GameSchema, OldGamesSchema],
      directory: dir.path,
      // inspector: false,
      name: 'dominoes.isar',
    );
    dev.log('Isar instance created, name: ${isar.name}');
    FlutterNativeSplash.remove();
    return isar;
  }
}
