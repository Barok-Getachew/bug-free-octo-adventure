import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';
import 'package:personal_portfolio/screens/contactme/contactMe.dart';

class ContactMeMobile extends StatefulWidget {
  const ContactMeMobile({super.key});

  @override
  State<ContactMeMobile> createState() => _ContactMeMobileState();
}

class _ContactMeMobileState extends State<ContactMeMobile> {
  CarouselController controller = CarouselController();
  List<int> aray = [
    1,
    2,
    3,
  ];
  List<Widget> contactMobile = [
    ContactContainer(
      location: 'Location',
      data: Get.find<PortfolioController>().my_contact.location,
      lottieAdress:
          "https://lottie.host/4326ac2a-e2da-4694-9541-ef5ca10cc4ac/d0pe7Rh3lT.json",
    ),
    ContactContainer(
      location: '@Email',
      data: Get.find<PortfolioController>().my_contact.emialAdress,
      lottieAdress:
          "https://lottie.host/38623d9a-2656-451c-879b-01dd1d4cde17/8M0V5djVWH.json",
    ),
    ContactContainer(
      location: 'PhoneNumber',
      data: Get.find<PortfolioController>().my_contact.phoneNumber,
      lottieAdress:
          "https://lottie.host/4ea403bd-c3ff-4971-9011-e4cbc8bdda2d/9TEgNjQc6D.json",
    )
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.55,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Column(
        children: [
          Gap(size.height * 0.045),
          SizedBox(
            height: size.height * 0.045,
            child: const TitleA(
              title: Constants.contactMe,
              fontSize: 16,
            ),
          ),
          Gap(size.height * 0.07),
          CarouselSlider.builder(
            itemCount: contactMobile.length,
            itemBuilder: (context, index, realIndex) {
              return contactMobile[index];
            },
            options: CarouselOptions(
              height: size.height * 0.25,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              enlargeFactor: 0.4,
              enlargeCenterPage: true,
              reverse: false,
              autoPlayAnimationDuration: Duration(seconds: 1),
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
          Gap(size.height * 0.09),
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
        ],
      ),
    );
  }
}
