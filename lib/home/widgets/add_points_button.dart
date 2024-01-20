import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPointsButton extends StatelessWidget {
  const AddPointsButton({required this.onTap, super.key});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height / 10,
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  color: isDarkMode
                      ? Theme.of(context).primaryColorLight
                      : Theme.of(context).primaryColorDark,
                ),
              ),
            ),
            elevation: MaterialStateProperty.all(10),
            backgroundColor: MaterialStateProperty.all(
              isDarkMode
                  ? Theme.of(context).primaryColorLight
                  : Theme.of(context).primaryColorDark,
            ),
          ),
          child: Text(
            'Añadir Puntaje',
            style: GoogleFonts.poppins(
              color: isDarkMode
                  ? Theme.of(context).primaryColorDark
                  : Theme.of(context).primaryColorLight,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
