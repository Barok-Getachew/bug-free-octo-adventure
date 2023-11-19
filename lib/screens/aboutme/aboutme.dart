import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 975,
      width: double.infinity,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 2,
            height: 975,
            child: Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: Image.asset(
                "images/personImage.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 975,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.09, vertical: size.height * 0.2),
              child: Column(
                children: [
                  const TitleA(title: Constants.aboutme),
                  const Gap(60),
                  SizedBox(
                    height: 440,
                    width: 600,
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
            ),
          )
        ],
      ),
    );
  }
}
