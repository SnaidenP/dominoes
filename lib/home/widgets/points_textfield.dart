import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PointTextField extends StatelessWidget {
  const PointTextField({required this.nombreEquipo, super.key});
  final String nombreEquipo;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 4),
          child: Text(
            nombreEquipo.length > 10
                ? '${nombreEquipo.substring(0, 10)}...'
                : nombreEquipo,
            style: GoogleFonts.poppins(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          width: size.width / 3,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  width: 3,
                  color: isDarkMode
                      ? Theme.of(context).primaryColorLight
                      : Theme.of(context).primaryColorDark,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
