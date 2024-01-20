import 'package:dominoes/theme/app_assets.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                        child: isDarkMode
                            ? AppAssets.appLogoWhite
                            : AppAssets.appLogo,
                      ),
                      const Text(
                        'KAPICUA',
                        style: TextStyle(fontSize: 20),
                        // style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const Text('PARTIDA'),
                  leading: const Icon(Icons.gamepad_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('CONFIGURACION DE PARTIDA'),
                  leading: const Icon(Icons.settings_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('HISTORIAL DE PARTIDAS'),
                  leading: const Icon(Icons.history_outlined),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const Align(
            alignment: FractionalOffset.bottomCenter,
            child: Text('Powered by Snaiden'),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
