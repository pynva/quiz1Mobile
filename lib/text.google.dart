import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextGoogle extends StatelessWidget {
  final String text;

  const TextGoogle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.oswald(),
    );
  }
}