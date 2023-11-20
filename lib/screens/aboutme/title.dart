import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleA extends StatelessWidget {
  final String title;
  const TitleA({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      width: size.width * 0.17,
      child: Stack(
        children: [
          Container(
            height: 80,
            width: 70,
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
            top: 15,
            left: 45,
            right: -30,
            bottom: 0,
            child: Text(
              title,
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 45,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
