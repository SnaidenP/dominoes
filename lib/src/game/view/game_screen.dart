import 'dart:ffi';
import 'package:dominoes/l10n/l10n.dart';
import 'package:dominoes/src/game/cubit/game_cubit.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:dominoes/src/game/widgets/drawer.dart';
import 'package:dominoes/src/game/widgets/point_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late Future<void> _initializationFuture;

  @override
  void initState() {
    super.initState();
    _initializationFuture = _initializeGameData();
  }

  Future<void> _initializeGameData() async {
    final isar = context.read<Isar>();
    final existingGame = await isar.games.where().findFirst();
    if (mounted) {
      if (existingGame == null) {
        final l10n = context.l10n;
        final initialData = Game()
          ..teamAname = l10n.them
          ..teamBname = l10n.us
          ..limit = 200;

        await isar.writeTxn(() async {
          await isar.games.put(initialData);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializationFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final isar = context.read<Isar>();
          return BlocProvider(
            create: (context) => GameCubit(isar)..loadGame(),
            child: const GamePage(),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controllerA = TextEditingController();
    final controllerB = TextEditingController();
    final gameCubit = context.read<GameCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/domino.jpeg', width: 100, height: 100),
        centerTitle: true,
        actions: [
          SizedBox(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: BlocProvider.value(
                value: gameCubit,
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog<Void>(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Image.asset(
                            'assets/domino.jpeg',
                            width: 100,
                            height: 100,
                          ),
                          content: Text(
                            context.l10n.confirm_new_game,
                            style: const TextStyle(fontSize: 20),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                controllerA.clear();
                                controllerB.clear();
                                gameCubit.newGame();
                                Navigator.of(context).pop();
                              },
                              child: Text(context.l10n.yes),
                            ),
                            TextButton(
                              onPressed: () async {
                                controllerA.clear();
                                controllerB.clear();
                                Navigator.of(context).pop();
                              },
                              child: Text(context.l10n.no),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  label: Text(
                    context.l10n.new_game,
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocListener<GameCubit, GameState>(
          listener: (context, state) {
            if (state is GameError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            } else if (state is GameLoaded) {
              if (state.game.limit != null) {
                final totalPointsA = state.game.rounds.fold(
                  0,
                  (previousValue, element) =>
                      previousValue + element.teamAscore!,
                );
                final totalPointsB = state.game.rounds.fold(
                  0,
                  (previousValue, element) =>
                      previousValue + element.teamBscore!,
                );
                if (totalPointsA >= state.game.limit! ||
                    totalPointsB >= state.game.limit!) {
                  showDialog<Void>(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Image.asset(
                          'assets/domino.jpeg',
                          width: 100,
                          height: 100,
                        ),
                        content: Column(
                          children: [
                            Text(context.l10n.game_over),
                            const SizedBox(height: 15),
                            Text(context.l10n.confirm_new_game),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              gameCubit.newGame();
                              controllerA.clear();
                              controllerB.clear();
                              Navigator.of(context).pop();
                            },
                            child: Text(context.l10n.yes),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(context.l10n.no),
                          ),
                        ],
                      );
                    },
                  );
                }
              }
            }
          },
          child: BlocBuilder<GameCubit, GameState>(
            builder: (context, state) {
              if (state is GameLoaded) {
                return ListView(
                  children: <Widget>[
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(state.game.teamAname ?? 'Error'),
                              const SizedBox(height: 10),
                              PointsTextField(
                                controller: controllerA,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(state.game.teamBname ?? 'Error'),
                              const SizedBox(height: 10),
                              PointsTextField(
                                controller: controllerB,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: SizedBox(
                        width: double.maxFinite,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            if (controllerA.text.isEmpty &&
                                controllerB.text.isEmpty) {
                              return;
                            }
                            context.read<GameCubit>().addRound(
                                  int.tryParse(controllerA.text) ?? 0,
                                  int.tryParse(controllerB.text) ?? 0,
                                );

                            controllerA.clear();
                            controllerB.clear();
                          },
                          child: Text(
                            context.l10n.add_round,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    BlocBuilder<GameCubit, GameState>(
                      builder: (context, state) {
                        if (state is GameLoaded) {
                          return Column(
                            children: [
                              Container(
                                // Total points
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF0DCDAA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        // Name of team A
                                        Text(
                                          state.game.teamAname ?? 'Error',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          '${state.game.rounds.fold(0, (previousValue, element) => previousValue + element.teamAscore!)}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        // Name of team B
                                        Text(
                                          state.game.teamBname ?? 'Error',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          '${state.game.rounds.fold(0, (previousValue, element) => previousValue + element.teamBscore!)}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                );
              } else if (state is GameError) {
                return Center(
                  child: Text(state.message),
                );
              } else if (state is GameInitial) {
                return const Center(child: CircularProgressIndicator());
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
