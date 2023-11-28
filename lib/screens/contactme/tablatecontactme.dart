import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class TablateContactMe extends StatelessWidget {
  const TablateContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.9,
        color: const Color.fromRGBO(33, 37, 41, 1),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(size.width * 0.03),
              SizedBox(
                height: size.height * 0.045,
                child: const TitleA(
                  title: Constants.contactMe,
                  fontSize: 30,
                ),
              ),
              Gap(size.width * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContactContainer(
                    location: "Location",
                    data: Get.find<PortfolioController>().my_contact.location,
                    lottieAdress:
                        "https://lottie.host/4326ac2a-e2da-4694-9541-ef5ca10cc4ac/d0pe7Rh3lT.json",
                  ),
                  Gap(size.width * 0.03),
                  ContactContainer(
                    location: "@Email",
                    data:
                        Get.find<PortfolioController>().my_contact.emialAdress,
                    lottieAdress:
                        "https://lottie.host/38623d9a-2656-451c-879b-01dd1d4cde17/8M0V5djVWH.json",
                  ),
                  Gap(size.width * 0.02),
                ],
              ),
              Gap(size.width * 0.06),
              ContactContainer(
                location: "Phone number",
                data: Get.find<PortfolioController>().my_contact.phoneNumber,
                lottieAdress:
                    "https://lottie.host/4ea403bd-c3ff-4971-9011-e4cbc8bdda2d/9TEgNjQc6D.json",
              ),
              Gap(size.height * 0.1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Developed in  ",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  Icon(
                    Icons.favorite,
                    weight: size.width * 0.03,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    " With ",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  Text(
                    "Flutter",
                    style: GoogleFonts.poppins(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
            ]));
  }
}

class ContactContainer extends StatelessWidget {
  final String location;
  final String data;
  final String lottieAdress;
  const ContactContainer(
      {super.key,
      required this.location,
      required this.data,
      required this.lottieAdress});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.25,
      height: size.height * 0.23,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 50, 62, 1),
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Column(
        children: [
          SizedBox(
              width: size.width * 0.05,
              child: Lottie.network(lottieAdress, height: size.height * 0.12)),
          Text(
            location,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          Gap(size.height * 0.0275),
          Text(
            data,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          )
        ],
      ),
    );
  }
}
