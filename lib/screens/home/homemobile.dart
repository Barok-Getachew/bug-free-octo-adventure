import 'dart:js' as js;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/home/circularcontanr.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
    final size = MediaQuery.of(context).size;
    return MouseRegion(
       cursor: SystemMouseCursors.contextMenu,
      opaque: true,
      child: Container(
        height: size.height,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/personImage.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Hello I'm",
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
            ),
            Gap(size.height * 0.025),
            Text(
              Get.find<PortfolioController>().PortfolioData.name,
              style: GoogleFonts.plusJakartaSans(
                  color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Gap(size.height * 0.01),
            DefaultTextStyle(
              style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2,
                  color: Colors.white),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                      Get.find<PortfolioController>().services[0]),
                  TypewriterAnimatedText(
                      Get.find<PortfolioController>().services[1]),
                  TypewriterAnimatedText(
                      Get.find<PortfolioController>().services[2]),
                  TypewriterAnimatedText(
                      Get.find<PortfolioController>().services[3]),
                ],
                onTap: () {},
              ),
            ),
            Gap(size.height * 0.05),
            Container(
              height: size.height * 0.055,
              width: size.width * 0.45,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(252, 74, 26, 1),
                    Color.fromRGBO(250, 124, 37, 1),
                    Color.fromRGBO(249, 147, 43, 1),
                    Color.fromRGBO(247, 183, 51, 1)
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.all(Radius.circular(13))),
              child: Center(
                  child: Text(
                Constants.download,
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              )),
            ),
            Gap(size.height * 0.06),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularContainer(
                  screenWidth: size.width,
                  screenHeight: size.height,
                  iconUrl: 'vectors/instagram.png',
                  ontap: () => js.context.callMethod(
                      'open', ["https://www.instagram.com/barok_getachew/"]),
                ),
                Gap(size.height * 0.023),
                CircularContainer(
                  screenWidth: size.width,
                  screenHeight: size.height,
                  iconUrl: 'vectors/linkedin.png',
                  ontap: () => js.context.callMethod(
                      'open', ["https://www.linkedin.com/in/birukgetachew/"]),
                ),
                Gap(size.height * 0.023),
                CircularContainer(
                  screenWidth: size.width,
                  screenHeight: size.height,
                  iconUrl: 'vectors/github.png',
                  ontap: () => js.context
                      .callMethod('open', ["https://github.com/Barok-Getachew"]),
                ),
                Gap(size.height * 0.023),
                CircularContainer(
                  screenWidth: size.width,
                  screenHeight: size.height,
                  iconUrl: 'vectors/medium.png',
                  ontap: () => js.context
                      .callMethod('open', ["https://medium.com/@leoseven59"]),
                ),
              ],
            ),
            Gap(size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
