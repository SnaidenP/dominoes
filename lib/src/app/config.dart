import 'dart:developer' as dev;
import 'package:dominoes/src/game/database/game.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

Future<Isar> initalConfig() async {
  if (Isar.getInstance() != null) {
    dev.log('Isar instance already exists, name: ${Isar.getInstance()!.name}');

    FlutterNativeSplash.remove();

    return Isar.getInstance()!;
  } else {
    dev.log('Creating Isar instance');
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [GameSchema],
      directory: dir.path,
      inspector: false,
      name: 'dominoes.isar',
    );
    dev.log('Isar instance created, name: ${isar.name}');

    final initialData = Game()
      ..teamAname = 'Ellos'
      ..teamBname = 'Nosotros'
      ..totalScoreA = 0
      ..totalScoreB = 0;
    await isar.writeTxn(() async {
      await isar.games.put(initialData);
    });

    FlutterNativeSplash.remove();

    return isar;
  }
}
