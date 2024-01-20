import 'package:device_preview/device_preview.dart';
import 'package:dominoes/app/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const SplashScreen(),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light().copyWith(
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
