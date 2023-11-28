import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/screens/aboutme/title.dart';

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Get.put(PortfolioController());
    return Container(
      height: size.height * 0.7,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Column(
        children: [
          Gap(size.height * 0.05),
          Column(
            children: [
              SizedBox(
                  height: size.height * 0.045,
                  child: const TitleA(title: "AboutMe", fontSize: 16)),
              Gap(size.width * 0.05),
              SizedBox(
                height: size.height * 0.5,
                width: size.width * 0.8,
                child: Text(
                  Get.find<PortfolioController>().PortfolioData.aboutMe,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
