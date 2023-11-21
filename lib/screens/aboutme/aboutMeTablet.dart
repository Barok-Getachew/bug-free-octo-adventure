import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size * 0.7;
    return Container(
      height: size.height,
      width: double.infinity,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Row(
        children: [
          Gap(size.width * 0.05),
          SizedBox(
            width: size.width / 2,
            height: size.height * 0.7,
            child: Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: Image.asset(
                "images/personImage.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03, vertical: size.height * 0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.045,
                    child: const TitleA(
                      title: Constants.aboutme,
                      fontSize: 20,
                    ),
                  ),
                  Gap(size.height * 0.07),
                  SizedBox(
                    height: size.height * 0.3,
                    width: size.width * 0.6,
                    child: Text(
                      Constants.about,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
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
