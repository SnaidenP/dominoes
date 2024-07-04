import 'package:dominoes/src/game/cubit/game_cubit.dart';
import 'package:dominoes/src/game/database/game.dart';
import 'package:dominoes/src/game/widgets/drawer.dart';
import 'package:dominoes/src/game/widgets/point_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameCubit()..loadGame(),
      child: const GamePage(),
    );
  }
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final game = context.read<GameCubit>();

    final controllerA = TextEditingController();
    final controllerB = TextEditingController();

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
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
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
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('WTF'),
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
                      const Text('HOLA'),
                      const SizedBox(height: 10),
                      PointsTextField(
                        controller: controllerB,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
