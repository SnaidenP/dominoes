import 'package:dominoes/l10n/cubit/locale_cubit.dart';
import 'package:dominoes/src/app/config.dart';
import 'package:dominoes/src/app/theme/theme_cubit.dart' as customTheme;
import 'package:dominoes/src/game/cubit/old_games_cubit.dart';
import 'package:dominoes/src/game/view/config_screen.dart';
import 'package:dominoes/src/game/view/game_screen.dart';
import 'package:dominoes/src/game/view/history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  final isar = await initialConfig();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit(),
        ),
        BlocProvider(
          create: (context) => customTheme.ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => OldGamesCubit(isar),
        ),
      ],
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
        return BlocBuilder<customTheme.ThemeCubit, customTheme.ThemeMode>(
          builder: (context, themeMode) {
            return MaterialApp(
              title: 'Dominoes Game Score',
              initialRoute: '/game',
              locale: state,
              themeMode: themeMode == customTheme.ThemeMode.dark
                  ? ThemeMode.dark
                  : ThemeMode.light,
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
      },
    );
  }
}
