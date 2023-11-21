import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/home/circularcontanr.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
            "Biruk Getachew",
            style: GoogleFonts.plusJakartaSans(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Gap(size.height * 0.01),
          Text(
            "Fullstack developer",
            style: GoogleFonts.plusJakartaSans(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
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
          Gap(size.height * 0.04),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
          Gap(size.height * 0.023),
        ],
      ),
    );
  }
}
