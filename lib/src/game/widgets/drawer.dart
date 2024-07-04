import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/domino.jpeg',
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.games),
            title: const Text('JUEGO'),
            onTap: () {
              if (ModalRoute.of(context)!.settings.name != '/game') {
                Navigator.popAndPushNamed(context, '/game');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('CONFIGURACIÓN'),
            onTap: () {
              if (ModalRoute.of(context)!.settings.name != '/config') {
                Navigator.popAndPushNamed(context, '/config');
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.graphic_eq),
            title: const Text('PARTIDAS GUARDADAS'),
            onTap: () {
              if (ModalRoute.of(context)!.settings.name != '/history') {
                Navigator.popAndPushNamed(context, '/history');
              }
            },
          ),
          const Spacer(),
          const Text(
            'v1.0.0',
          ),
          const Text(
            'by SnaidenP',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
