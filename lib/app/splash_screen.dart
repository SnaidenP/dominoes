import 'dart:async';

import 'package:dominoes/home/view/home_screen.dart';
import 'package:dominoes/theme/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<Widget>(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isDarkMode) AppAssets.appLogoWhite else AppAssets.appLogo,
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 3,
            child: LinearProgressIndicator(
              color: isDarkMode
                  ? Theme.of(context).primaryColorLight
                  : Theme.of(context).primaryColorDark,
            ),
          ),
        ],
      ),
    );
  }
}
