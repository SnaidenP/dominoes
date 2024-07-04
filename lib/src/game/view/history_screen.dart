import 'package:dominoes/src/game/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dominoes'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Score Screen'),
      ),
    );
  }
}
