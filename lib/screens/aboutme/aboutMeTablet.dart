import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
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
          Gap(size.width * 0.09),
          SizedBox(
            height: size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.01,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(size.height * 0.1),
                  SizedBox(
                    height: size.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.only(left: size.width * 0.0),
                      child: const TitleA(
                        title: Constants.aboutme,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Gap(size.height * 0.07),
                  SizedBox(
                    height: size.height * 0.68,
                    width: size.width * 0.6,
                    child: Text(
                      Get.find<PortfolioController>().PortfolioData.aboutMe,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Gap(size.height * 0.02),
                  Row(
                    children: [
                      Text(
                        "Skills:",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Gap(
                        size.width * 0.007,
                      ),
                      Image.asset(
                        "vectors/flutter.png",
                        width: size.width * 0.04,
                      ),
                      Gap(
                        size.width * 0.007,
                      ),
                      Image.asset(
                        "vectors/django.png",
                        width: size.width * 0.04,
                      ),
                      Gap(
                        size.width * 0.007,
                      ),
                      Image.asset(
                        "vectors/android.png",
                        width: size.width * 0.04,
                      ),
                      Gap(
                        size.width * 0.007,
                      ),
                      Image.asset(
                        "vectors/java.png",
                        width: size.width * 0.04,
                      ),
                    ],
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
