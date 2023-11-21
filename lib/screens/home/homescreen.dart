import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/data/constants.dart';

import 'package:personal_portfolio/screens/home/circularcontanr.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: const Color.fromRGBO(39, 50, 62, 1),
      child: Stack(
        children: [
          Positioned(
            top: -500,
            // left: 0,
            right: -550,
            // bottom: 0,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.skew(9, 10),
              child: SvgPicture.asset(
                'vectors/blob.svg',
                width: size.width * 1.2,
                height: size.height * 1.4,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: size.height * 0.9,
                width: size.width / 2,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * 0.08),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(size.height * 0.17),
                      Container(
                        height: size.height * 0.09,
                        width: size.width * 0.09,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(252, 74, 26, 1),
                                  Color.fromRGBO(250, 124, 37, 1),
                                  Color.fromRGBO(249, 147, 43, 1),
                                  Color.fromRGBO(247, 183, 51, 1)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                        child: Center(
                            child: Text(
                          Constants.greeting,
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        )),
                      ),
                      Gap(size.height * 0.02),
                      Text(
                        Constants.name,
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 85,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4,
                            color: Colors.white),
                      ),
                      Gap(size.height * 0.02),
                      Text(
                        Constants.skill,
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                            color: Colors.white),
                      ),
                      Gap(size.height * 0.02),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularContainer(
                            screenWidth: size.width,
                            screenHeight: size.height,
                            iconUrl: '',
                          ),
                          Gap(size.height * 0.023),
                          CircularContainer(
                            screenWidth: size.width,
                            screenHeight: size.height,
                            iconUrl: '',
                          ),
                          Gap(size.height * 0.023),
                          CircularContainer(
                            screenWidth: size.width,
                            screenHeight: size.height,
                            iconUrl: '',
                          ),
                          Gap(size.height * 0.023),
                          CircularContainer(
                            screenWidth: size.width,
                            screenHeight: size.height,
                            iconUrl: '',
                          ),
                        ],
                      ),
                      Gap(size.height * 0.04),
                      Container(
                        height: size.height * 0.075,
                        width: size.width * 0.14,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(252, 74, 26, 1),
                                  Color.fromRGBO(250, 124, 37, 1),
                                  Color.fromRGBO(249, 147, 43, 1),
                                  Color.fromRGBO(247, 183, 51, 1)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Center(
                            child: Text(
                          Constants.download,
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.9,
                width: size.width / 2,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.only(right: size.height * 0.02),
                  child: Center(
                    child: Lottie.asset("assets/animation/3.json",
                        height: size.height * 0.5),

                    // Lottie.asset("assets/animations/a.json")
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
