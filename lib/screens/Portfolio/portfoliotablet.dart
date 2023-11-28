// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';
import 'package:personal_portfolio/screens/home/circularcontanr.dart';

import '../../data/constants.dart';

class PortfolioTablet extends StatefulWidget {
  const PortfolioTablet({super.key});

  @override
  State<PortfolioTablet> createState() => _PortfolioTabletState();
}

class _PortfolioTabletState extends State<PortfolioTablet> {
  CarouselController controller = CarouselController();

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: double.infinity,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Column(
        children: [
          Gap(size.height * 0.05),
          SizedBox(
            height: size.height * 0.045,
            child: const TitleA(
              title: Constants.portfolio,
              fontSize: 20,
            ),
          ),
          Gap(size.height * 0.1),
          CarouselSlider.builder(
            itemCount: Get.find<PortfolioController>().projectData.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                width: size.width * 0.65,
                // margin: const EdgeInsets.symmetric(
                //   horizontal: 105,
                // ),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(39, 50, 62, 1),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(39, 50, 62, 0.49).withOpacity(0.8),
                      spreadRadius: 6,
                      blurRadius: 25,
                      offset: const Offset(3.0, 3.0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "images/personImage.png",
                      fit: BoxFit.cover,
                      width: size.width * 0.4,
                      height: size.height * 0.6,
                    ),
                    SizedBox(
                      width: size.width * 0.22,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Gap(size.height * 0.08),
                          SvgPicture.asset(
                            "vectors/icon1.svg",
                            height: size.height * 0.05,
                          ),
                          Gap(size.height * 0.04),
                          Text(
                            Get.find<PortfolioController>()
                                .projectData[index]
                                .projectName,
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Gap(size.height * 0.025),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.01),
                            child: Text(
                              Get.find<PortfolioController>()
                                  .projectData[index]
                                  .projectDescripttion,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Gap(size.height * 0.07),
                          Row(
                            children: [
                              Gap(size.height * 0.013),
                              BigCircularContainer(
                                screenWidth: size.width,
                                screenHeight: size.height * 0.65,
                                iconUrl: 'vectors/github.png',
                                ontap: () => js.context.callMethod('open', [
                                  Get.find<PortfolioController>()
                                      .projectData[index]
                                      .projectUrl,
                                ]),
                              ),
                              Gap(size.height * 0.013),
                              BigCircularContainer(
                                screenWidth: size.width,
                                screenHeight: size.height * 0.65,
                                iconUrl: 'vectors/linkedin.png',
                                ontap: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: size.height * 0.6,
              aspectRatio: 16 / 9,
              viewportFraction: 0.7,
              enlargeFactor: 0.2,
              enlargeCenterPage: true,
              reverse: false,
              autoPlay: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (index, reason) {},
            ),
          ),
          Gap(size.height * 0.04),
        ],
      ),
    );
  }
}
