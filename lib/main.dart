import 'package:dominoes/l10n/cubit/locale_cubit.dart';
import 'package:dominoes/src/app/config.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:dominoes/src/game/view/config_screen.dart';
import 'package:dominoes/src/game/view/game_screen.dart';
import 'package:dominoes/src/game/view/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:isar/isar.dart';
import 'package:provider/provider.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final isar = await initialConfig();
  runApp(
    BlocProvider(
      create: (context) => LocaleCubit(),
      child: Provider(create: (context) => isar, child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Dominoes Game Score',
          initialRoute: '/game',
          locale: state,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routes: {
            '/game': (context) => const GameScreen(),
            '/config': (context) => const ConfigScreen(),
            '/history': (context) => const HistoryScreen(),
          },
        );
      },
    );
  }
}
