
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class Myservices extends StatefulWidget {
  const Myservices({
    super.key,
  });

  @override
  State<Myservices> createState() => _MyservicesState();
}

class _MyservicesState extends State<Myservices> {
  CarouselController controller = CarouselController();
  List<int> aray = [1, 2, 3, 4, 5];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Get.put(PortfolioController());
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.biggest.width > 1450) {
          return Container(
              height: size.height,
              width: double.infinity,
              color: const Color.fromRGBO(39, 50, 62, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(size.height * 0.05),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: const TitleA(
                      fontSize: 45,
                      title: Constants.myService,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.08,
                        vertical: size.height * 0.07),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Gap(size.height * 0.03),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width * 0.19,
                                  height: 300,
                                  color: Colors.transparent,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextTitle(
                                          title: Get.find<PortfolioController>()
                                              .services[0]),
                                      TextDescription(
                                        description:
                                            Get.find<PortfolioController>()
                                                .service_details[0],
                                      )
                                    ],
                                  ),
                                ),
                                Gap(size.height * 0.03),
                                SvgPicture.asset(
                                  "vectors/icon1.svg",
                                )
                              ],
                            ),
                            Gap(size.height * 0.03),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width * 0.19,
                                  height: 300,
                                  color: Colors.transparent,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextTitle(
                                          title: Get.find<PortfolioController>()
                                              .services[1]),
                                      TextDescription(
                                        description:
                                            Get.find<PortfolioController>()
                                                .service_details[1],
                                      )
                                    ],
                                  ),
                                ),
                                Gap(size.height * 0.03),
                                SvgPicture.asset("vectors/icon1.svg")
                              ],
                            )
                          ],
                        ),
                        Gap(size.height * 0.03),
                        SizedBox(
                          height: size.height * 0.7,
                          child: Image.asset(
                            "images/phone.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Gap(size.height * 0.03),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Gap(size.height * 0.03),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset("vectors/icon1.svg"),
                                Gap(size.height * 0.03),
                                Container(
                                  width: size.width * 0.19,
                                  height: 300,
                                  color: Colors.transparent,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextTitle(
                                          title: Get.find<PortfolioController>()
                                              .services[2]),
                                      TextDescriptionL(
                                        description:
                                            Get.find<PortfolioController>()
                                                .service_details[2],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(size.height * 0.03),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset("vectors/icon1.svg"),
                                Gap(size.height * 0.03),
                                Container(
                                  width: size.width * 0.19,
                                  height: 300,
                                  color: Colors.transparent,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextTitle(
                                          title: Get.find<PortfolioController>()
                                              .services[3]),
                                      TextDescriptionL(
                                        description:
                                            Get.find<PortfolioController>()
                                                .service_details[3],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ));
        }
        if (constraints.biggest.width > 1000) {
          return Container(
            width: double.infinity,
            height: size.height * 0.8,
            color: const Color.fromRGBO(39, 50, 62, 1),
            child: Column(
              children: [
                Gap(size.height * 0.045),
                SizedBox(
                  height: size.height * 0.045,
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width * 0.21),
                    child: const TitleA(
                      title: Constants.myService,
                      fontSize: 20,
                    ),
                  ),
                ),
                Gap(size.height * 0.07),
                CarouselSlider.builder(
                  itemCount: Get.find<PortfolioController>().services.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                        width: size.width * 0.4,
                        height: size.height * 0.3,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(33, 37, 41, 1),
                          borderRadius: BorderRadius.circular(9),
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02),
                          child: Column(
                            children: [
                              Gap(size.height * 0.03),
                              SvgPicture.asset(
                                "vectors/icon1.svg",
                                height: size.height * 0.1,
                              ),
                              Gap(size.height * 0.02),
                              TextTitle(
                                  title: Get.find<PortfolioController>()
                                      .services[index]),
                              Gap(size.height * 0.02),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02),
                                child: TextDescriptionC(
                                  description: Get.find<PortfolioController>()
                                      .service_details[index],
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                  options: CarouselOptions(
                    height: size.height * 0.43,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.5,
                    enlargeFactor: 0.2,
                    enlargeCenterPage: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            width: double.infinity,
            height: size.height * 0.6,
            color: const Color.fromRGBO(39, 50, 62, 1),
            child: Column(
              children: [
                Gap(size.height * 0.045),
                SizedBox(
                  height: size.height * 0.045,
                  child: const TitleA(
                    title: Constants.myService,
                    fontSize: 16,
                  ),
                ),
                Gap(size.height * 0.07),
                CarouselSlider.builder(
                  itemCount: Get.find<PortfolioController>().services.length,
                  itemBuilder: (context, index, realIndex) {
                    return FlipCard(
                        front: Container(
                            width: size.width * 0.5,
                            height: size.height * 0.2,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(33, 37, 41, 1),
                              borderRadius: BorderRadius.circular(9),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(39, 50, 62, 0.0),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(3.0, 3.0),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02),
                              child: Column(
                                children: [
                                  Gap(size.height * 0.07),
                                  SvgPicture.asset(
                                    "vectors/icon1.svg",
                                    height: size.height * 0.07,
                                  ),
                                  Gap(size.height * 0.02),
                                  Text(
                                    Get.find<PortfolioController>()
                                        .services[index],
                                    style: GoogleFonts.poppins(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            )),
                        back: Container(
                          width: size.width * 0.5,
                          height: size.height * 0.2,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(33, 37, 41, 1),
                            borderRadius: BorderRadius.circular(9),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(39, 50, 62, 0.0),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02),
                            child: Column(
                              children: [
                                Gap(size.height * 0.02),
                                TextDescriptionC(
                                  description: Get.find<PortfolioController>()
                                      .service_details[index],
                                ),
                              ],
                            ),
                          ),
                        ));
                  },
                  options: CarouselOptions(
                    height: size.height * 0.3,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    enlargeFactor: 0.4,
                    enlargeCenterPage: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
      textAlign: TextAlign.left,
    );
  }
}

class TextDescription extends StatelessWidget {
  final String description;
  const TextDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: GoogleFonts.poppins(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),
      textAlign: TextAlign.right,
    );
  }
}

class TextDescriptionL extends StatelessWidget {
  final String description;
  const TextDescriptionL({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: GoogleFonts.poppins(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),
      textAlign: TextAlign.left,
    );
  }
}

class TextDescriptionC extends StatelessWidget {
  final String description;
  const TextDescriptionC({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: GoogleFonts.poppins(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w300),
      textAlign: TextAlign.justify,
    );
  }
}
