import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';
import 'package:personal_portfolio/screens/home/circularcontanr.dart';

import '../data/constants.dart';

class PortfolioMbile extends StatefulWidget {
  const PortfolioMbile({super.key});

  @override
  State<PortfolioMbile> createState() => _PortfolioMbileState();
}

class _PortfolioMbileState extends State<PortfolioMbile> {
  CarouselController controller = CarouselController();
  List<int> aray = [1, 2, 3, 4, 5];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            itemCount: aray.length,
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
                      color: Color.fromRGBO(39, 50, 62, 0.49).withOpacity(0.8),
                      spreadRadius: 6,
                      blurRadius: 25,
                      offset: const Offset(3.0, 3.0),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "images/personImage.png",
                      fit: BoxFit.cover,
                      width: size.width * 0.8,
                      height: size.height * 0.2,
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Gap(size.height * 0.01),
                          SizedBox(
                            width: size.width * 0.4,
                            child: Text(
                              "UI/UX Design",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          Gap(size.height * 0.01),
                          SizedBox(
                            width: size.width * 0.4,
                            child: Text(
                              "Project Link",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          Gap(size.height * 0.013),
                          Row(
                            children: [
                              Gap(size.height * 0.01),
                              CircularContainer(
                                screenWidth: size.width,
                                screenHeight: size.height * 0.65,
                                iconUrl: '',
                              ),
                              Gap(size.height * 0.013),
                              CircularContainer(
                                screenWidth: size.width,
                                screenHeight: size.height * 0.65,
                                iconUrl: '',
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
              height: size.height * 0.4,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enlargeFactor: 0.5,
              enlargeCenterPage: true,
              reverse: true,
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
}
