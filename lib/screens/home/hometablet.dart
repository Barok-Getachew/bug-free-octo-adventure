import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/home/circularcontanr.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      height: size.height,
      color: const Color.fromRGBO(39, 50, 62, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(size.height * 0.17),
          Container(
            height: size.height * 0.09,
            width: size.width * 0.16,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(252, 74, 26, 1),
                  Color.fromRGBO(250, 124, 37, 1),
                  Color.fromRGBO(249, 147, 43, 1),
                  Color.fromRGBO(247, 183, 51, 1)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
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
                fontSize: 60,
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
                color: Colors.white),
          ),
          Gap(size.height * 0.02),
          Text(
            Constants.skill,
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
                color: Colors.white),
          ),
          Gap(size.height * 0.08),
          Container(
            height: size.height * 0.08,
            width: size.width * 0.24,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(252, 74, 26, 1),
                  Color.fromRGBO(250, 124, 37, 1),
                  Color.fromRGBO(249, 147, 43, 1),
                  Color.fromRGBO(247, 183, 51, 1)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Center(
                child: Text(
              Constants.download,
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            )),
          ),
          Gap(size.height * 0.3),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(size.width * 0.4),
              BigCircularContainer(
                screenWidth: size.width,
                screenHeight: size.height,
                iconUrl: '',
              ),
              Gap(size.height * 0.023),
              BigCircularContainer(
                screenWidth: size.width,
                screenHeight: size.height,
                iconUrl: '',
              ),
              Gap(size.height * 0.023),
              BigCircularContainer(
                screenWidth: size.width,
                screenHeight: size.height,
                iconUrl: '',
              ),
              Gap(size.height * 0.023),
              BigCircularContainer(
                screenWidth: size.width,
                screenHeight: size.height,
                iconUrl: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
