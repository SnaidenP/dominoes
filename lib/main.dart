import 'package:device_preview/device_preview.dart';
import 'package:dominoes/src/app/config.dart';
import 'package:dominoes/src/game/view/config_screen.dart';
import 'package:dominoes/src/game/view/game_screen.dart';
import 'package:dominoes/src/game/view/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final isar = await initalConfig();

  runApp(
    DevicePreview(
      builder: (context) =>
          Provider(create: (context) => isar, child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dominoes Game Score',
      initialRoute: '/game',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/game': (context) => const GameScreen(),
        '/config': (context) => const ConfigScreen(),
        '/history': (context) => const HistoryScreen(),
      },
    );
  }
}
