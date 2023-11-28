import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/aboutMeTablet.dart';
import 'package:personal_portfolio/screens/aboutme/homeaboutme.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.biggest.width > 1450) {
          return Container(
            height: size.height,
            width: double.infinity,
            color: const Color.fromRGBO(33, 37, 41, 1),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  height: size.height,
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width * 0.02),
                    child: Image.asset(
                      "images/personImage.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.09,
                        vertical: size.height * 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(size.height * 0.05),
                        const TitleA(
                          title: Constants.aboutme,
                          fontSize: 45,
                        ),
                        Gap(size.height * 0.03),
                        SizedBox(
                          height: size.height * 0.68,
                          width: size.width * 0.36,
                          child: Text(
                            Get.find<PortfolioController>()
                                .PortfolioData
                                .aboutMe,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
        if (constraints.biggest.width > 1000) {
          return const AboutMeTablet();
        } else {
          return const MobileAboutMe();
        }
      },
    );
  }
}
