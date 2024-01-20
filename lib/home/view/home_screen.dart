import 'package:dominoes/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<ScaffoldState>();
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      key: globalKey,
      appBar: MyAppBar(
        globalKey: globalKey,
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PointTextField(
                  nombreEquipo: context
                          .read<SharedPreferences>()
                          .getString('nombreEquipoA') ??
                      'N/A',
                ),
                PointTextField(
                  nombreEquipo: context
                          .read<SharedPreferences>()
                          .getString('nombreEquipoB') ??
                      'N/A',
                ),
              ],
            ),
            AddPointsButton(
              onTap: () {},
            ),
            TotalResult(
              nombreEquipoA: context
                      .read<SharedPreferences>()
                      .getString('nombreEquipoA') ??
                  'N/A',
              nombreEquipoB: context
                      .read<SharedPreferences>()
                      .getString('nombreEquipoB') ??
                  'N/A',
              puntajeEquipoA: 199,
              puntajeEquipoB: 49,
            ),
          ],
        ),
      ),
    );
  }
}
