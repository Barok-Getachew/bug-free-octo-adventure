import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleA extends StatelessWidget {
  final double fontSize;
  final String title;
  const TitleA({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      width: size.width * 0.3,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.08,
            width: size.width * 0.1,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(252, 74, 26, 1),
                  Color.fromRGBO(250, 124, 37, 1),
                  Color.fromRGBO(249, 147, 43, 1),
                  Color.fromRGBO(247, 183, 51, 1)
                ])),
          ),
          Positioned(
            top: size.height * 0.007,
            left: size.width * 0.05,
            bottom: 0,
            child: Text(
              title,
              style: GoogleFonts.plusJakartaSans(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
