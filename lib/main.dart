import 'package:device_preview/device_preview.dart';
import 'package:dominoes/app/app.dart';
import 'package:dominoes/database/config.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await createInitialConfig();
  final prefs = await SharedPreferences.getInstance();
  await Isar.initializeIsarCore();
  runApp(
    DevicePreview(
      // enabled: false,
      builder: (context) => Provider(
        create: (context) => prefs,
        child: const MyApp(),
      ),
    ),
  );
}
