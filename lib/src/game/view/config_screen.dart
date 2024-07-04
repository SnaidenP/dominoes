import 'package:dominoes/src/game/widgets/drawer.dart';
import 'package:flutter/material.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dominoes'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Config Screen'),
      ),
    );
  }
}
