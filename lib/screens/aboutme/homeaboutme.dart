import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Column(
        children: [
          Gap(size.height * 0.05),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: size.height * 0.03,
                  child: const TitleA(title: "AboutMe", fontSize: 16)),
              Gap(size.width * 0.05),
              SizedBox(
                height: 440,
                width: size.width * 0.6,
                child: Text(
                  Constants.about,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
