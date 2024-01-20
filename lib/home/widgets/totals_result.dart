import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalResult extends StatelessWidget {
  const TotalResult({
    required this.nombreEquipoA,
    required this.nombreEquipoB,
    required this.puntajeEquipoA,
    required this.puntajeEquipoB,
    super.key,
  });
  final String nombreEquipoA;
  final int puntajeEquipoA;
  final String nombreEquipoB;
  final int puntajeEquipoB;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xdF2B466F),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Totales',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${nombreEquipoA.length > 10 ? '${nombreEquipoA.substring(0, 10)}...' : nombreEquipoA}: $puntajeEquipoA",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "${nombreEquipoB.length > 10 ? '${nombreEquipoB.substring(0, 10)}...' : nombreEquipoB}: $puntajeEquipoB",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
