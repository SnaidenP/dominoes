import 'package:dominoes/l10n/cubit/locale_cubit.dart';
import 'package:dominoes/l10n/l10n.dart';
import 'package:dominoes/src/app/theme/theme_cubit.dart' as themeCubit;
import 'package:dominoes/src/game/database/game.dart';
import 'package:dominoes/src/game/widgets/custom_textfield.dart';
import 'package:dominoes/src/game/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  late Game? _game; // Declare the Game variable
  late TextEditingController nameTeam1Controller;
  late TextEditingController nameTeam2Controller;
  late TextEditingController limitPointsController;

  @override
  void initState() {
    super.initState();
    nameTeam1Controller = TextEditingController();
    nameTeam2Controller = TextEditingController();
    limitPointsController = TextEditingController();
    _loadGame(); // Load the game data initially
  }

  Future<void> _loadGame() async {
    // Read the current game data
    final allGames = context.read<Isar>().games;
    final existingGames = await allGames.where().findAll();
    final lastGameId = existingGames.isNotEmpty
        ? existingGames.reduce((a, b) => a.id > b.id ? a : b).id
        : 0;
    _game = await allGames.where().idEqualTo(lastGameId).findFirst();

    // If you are using text controllers, update them here
    nameTeam1Controller.text = _game?.teamAname ?? '';
    nameTeam2Controller.text = _game?.teamBname ?? '';
    limitPointsController.text = _game?.limit.toString() ?? '';

    setState(() {}); // Trigger a rebuild
  }

  @override
  Widget build(BuildContext context) {
    final localeCubit = context.read<LocaleCubit>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/domino.jpeg',
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: <Widget>[
            const SizedBox(height: 20),
            Text(
              context.l10n.edit_teams,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: nameTeam1Controller,
              hintText: context.l10n.name_team_1,
              icon: Icons.people_outline_outlined,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: nameTeam2Controller,
              hintText: context.l10n.name_team_2,
              icon: Icons.people,
            ),
            const SizedBox(height: 20),
            Text(
              context.l10n.limit_points,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: limitPointsController,
              hintText: '200',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            Text(
              context.l10n.change_language,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<Locale>(
                  value: localeCubit.state,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  style: Theme.of(context).textTheme.bodyLarge,
                  onChanged: (Locale? locale) {
                    localeCubit.setLocale(locale!);
                  },
                  items: const [
                    DropdownMenuItem(
                      value: Locale('en'),
                      child: Text(
                        '🇬🇧 English',
                      ),
                    ),
                    DropdownMenuItem(
                      value: Locale('es'),
                      child: Text(
                        '🇪🇸 Español',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              context.l10n.change_theme,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            IgnorePointer(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<themeCubit.ThemeMode>(
                    value: context.watch<themeCubit.ThemeCubit>().state,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    style: Theme.of(context).textTheme.bodyLarge,
                    onChanged: (themeCubit.ThemeMode? themeMode) {
                      if (themeMode != null) {
                        context
                            .read<themeCubit.ThemeCubit>()
                            .setTheme(themeMode);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: themeCubit.ThemeMode.light,
                        child: Text('🌞 Light'),
                      ),
                      DropdownMenuItem(
                        value: themeCubit.ThemeMode.dark,
                        child: Text('🌚 Dark'),
                      ),
                      DropdownMenuItem(
                        value: themeCubit.ThemeMode.system,
                        child: Text('🌓 System'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child: ElevatedButton(
                onPressed: () async {
                  if (nameTeam1Controller.text.isEmpty ||
                      nameTeam2Controller.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(context.l10n.please_complete_all_fields),
                      ),
                    );
                    return;
                  }

                  try {
                    int.parse(limitPointsController.text);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(context.l10n.please_enter_a_valid_number),
                      ),
                    );
                    return;
                  }

                  final isar = context.read<Isar>();

                  // Load the game again before updating

                  await isar.writeTxn(() async {
                    final existingGames = await isar.games.where().findAll();
                    final lastGameId = existingGames.isNotEmpty
                        ? existingGames.reduce((a, b) => a.id > b.id ? a : b).id
                        : 0;
                    _game = await isar.games
                        .where()
                        .idEqualTo(lastGameId)
                        .findFirst();

                    if (_game != null) {
                      _game?.teamAname = nameTeam1Controller.text;
                      _game?.teamBname = nameTeam2Controller.text;

                      _game?.limit = int.parse(limitPointsController.text);
                      await isar.games.put(_game!);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(context.l10n.saved_successfully),
                          backgroundColor: Colors.green,
                          duration: const Duration(seconds: 2),
                          action: SnackBarAction(
                            label: context.l10n.go,
                            onPressed: () {
                              Navigator.popAndPushNamed(context, '/game');
                            },
                          ),
                        ),
                      );
                      await _loadGame();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(context.l10n.no_game_found)),
                      );
                    }
                  });
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    Theme.of(context).primaryColor,
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  context.l10n.save,
                  style: Theme.of(context).primaryTextTheme.labelLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
