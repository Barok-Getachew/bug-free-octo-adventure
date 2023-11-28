// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';
import 'package:personal_portfolio/screens/home/circularcontanr.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio>
    with SingleTickerProviderStateMixin {
  CarouselController controller = CarouselController();
  List<int> aray = [1, 2, 3, 4, 5];
  int activeIndex = 0;


  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.biggest.width > 1450) {
          return Stack(children: [
            Container(
              alignment: Alignment.center,
              height: size.height,
              width: double.infinity,
              color: const Color.fromRGBO(33, 37, 41, 1),
              child: Column(
                children: [
                  Gap(size.height * 0.05),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: const TitleA(
                      title: Constants.portfolio,
                      fontSize: 45,
                    ),
                  ),
                  Gap(size.height * 0.1),
                  CarouselSlider.builder(
                    carouselController: controller,
                    itemCount:
                        Get.find<PortfolioController>().projectData.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        width: size.width * 0.65,
                        // margin: const EdgeInsets.symmetric(
                        //   horizontal: 105,
                        // ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(39, 50, 62, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(39, 50, 62, 0.3),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.3,
                              child: Image.network(
                                Get.find<PortfolioController>()
                                    .projectData[index]
                                    .projectImageUrl,
                                fit: BoxFit.contain,
                                width: size.width * 0.3,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(size.height * 0.08),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.14),
                                  child: SvgPicture.asset(
                                    "vectors/icon1.svg",
                                    height: size.height * 0.09,
                                  ),
                                ),
                                Gap(size.height * 0.03),
                                SizedBox(
                                  width: size.width * 0.25,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.01),
                                    child: Text(
                                      Get.find<PortfolioController>()
                                          .projectData[index]
                                          .projectName,
                                      style: GoogleFonts.poppins(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Gap(size.height * 0.022),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.01),
                                  child: SizedBox(
                                    width: size.width * 0.25,
                                    child: Text(
                                      Get.find<PortfolioController>()
                                          .projectData[index]
                                          .projectDescripttion,
                                      textAlign: TextAlign.justify,
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Gap(size.height * 0.1),
                                Row(
                                  children: [
                                    Gap(size.height * 0.013),
                                    BigCircularContainer(
                                      screenWidth: size.width,
                                      screenHeight: size.height * 0.65,
                                      iconUrl: 'vectors/github.png',
                                      ontap: () =>
                                          js.context.callMethod('open', [
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
                      autoPlayCurve: Curves.easeInOutQuart,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ),
                  ),
                  Gap(size.height * 0.04),
                  buildIndector()
                ],
              ),
            ),
            Positioned(
              top: size.height / 2,
              left: size.width * 0.014,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: size.width * 0.04,
                    color: const Color.fromARGB(255, 255, 136, 0),
                  ),
                  onPressed: () => controller.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.slowMiddle)),
            ),
            Positioned(
              top: size.height / 2,
              right: size.width * 0.014,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: size.width * 0.04,
                  color: const Color.fromARGB(255, 255, 123, 0),
                ),
                onPressed: () {
                  controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.slowMiddle);
                },
              ),
            ),
          ]);
        }
        if (constraints.biggest.width > 1000) {
          return Container(
            alignment: Alignment.center,
            height: size.height,
            width: double.infinity,
            color: const Color.fromRGBO(33, 37, 41, 1),
            child: Column(
              children: [
                Gap(size.height * 0.05),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.21),
                  child: SizedBox(
                    height: size.height * 0.045,
                    child: const TitleA(
                      title: Constants.portfolio,
                      fontSize: 20,
                    ),
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
                            color: const Color.fromRGBO(39, 50, 62, 0.49)
                                .withOpacity(0.8),
                            spreadRadius: 6,
                            blurRadius: 25,
                            offset: const Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            Get.find<PortfolioController>()
                                .projectData[index]
                                .projectImageUrl,
                            fit: BoxFit.cover,
                            width: size.width * 0.35,
                            height: size.height * 0.6,
                          ),
                          Gap(size.height * 0.01),
                          SizedBox(
                            width: size.width * 0.25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Gap(size.height * 0.025),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.003),
                                  child: Text(
                                    Get.find<PortfolioController>()
                                        .projectData[index]
                                        .projectDescripttion,
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
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
                                      ontap: () =>
                                          js.context.callMethod('open', [
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
        } else {
          return Container(
            alignment: Alignment.center,
            height: size.height * 0.63,
            width: double.infinity,
            color: const Color.fromRGBO(33, 37, 41, 1),
            child: Column(
              children: [
                Gap(size.height * 0.03),
                SizedBox(
                  height: size.height * 0.04,
                  child: const TitleA(
                    title: Constants.portfolio,
                    fontSize: 16,
                  ),
                ),
                Gap(size.height * 0.1),
                CarouselSlider.builder(
                  itemCount: Get.find<PortfolioController>().projectData.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      width: size.width * 0.78,
                      // margin: const EdgeInsets.symmetric(
                      //   horizontal: 105,
                      // ),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(39, 50, 62, 1),
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(39, 50, 62, 0.49),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: size.width * 0.75,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Gap(size.height * 0.016),
                                Icon(
                                  Icons.work_history_outlined,
                                  size: size.width * 0.125,
                                  color: Colors.orangeAccent,
                                ),
                                Gap(size.height * 0.014),
                                SizedBox(
                                  width: size.width * 0.4,
                                  child: Text(
                                    Get.find<PortfolioController>()
                                        .projectData[index]
                                        .projectName,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                                Gap(size.height * 0.01),
                                SizedBox(
                                  width: size.width * 0.7,
                                  child: Text(
                                    Get.find<PortfolioController>()
                                        .projectData[index]
                                        .projectDescripttion,
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                                Gap(size.height * 0.016),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Gap(size.height * 0.01),
                                    SizedBox(
                                      height: size.height * 0.04,
                                      child: CircularContainer(
                                        screenWidth: size.width,
                                        screenHeight: size.height * 0.65,
                                        iconUrl: 'vectors/github.png',
                                        ontap: () =>
                                            js.context.callMethod('open', [
                                          Get.find<PortfolioController>()
                                              .projectData[index]
                                              .projectUrl,
                                        ]),
                                      ),
                                    ),
                                    Gap(size.height * 0.02),
                                    SizedBox(
                                      height: size.height * 0.04,
                                      child: CircularContainer(
                                        screenWidth: size.width,
                                        screenHeight: size.height * 0.65,
                                        iconUrl: 'vectors/linkedin.png',
                                        ontap: () {},
                                      ),
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
                    height: size.height * 0.35,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.9,
                    enlargeFactor: 0.8,
                    enlargeCenterPage: false,
                    reverse: false,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {},
                  ),
                ),
                Gap(size.height * 0.04),
              ],
            ),
          );
        }
      },
    );
  }

  Widget buildIndector() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: Get.find<PortfolioController>().projectData.length,
        effect: const JumpingDotEffect(
          activeDotColor: Color.fromRGBO(252, 74, 26, 1),
          dotColor: Color.fromRGBO(250, 126, 37, 0.617),
        ),
      );
}
