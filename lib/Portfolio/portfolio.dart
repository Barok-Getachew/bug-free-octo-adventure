import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  CarouselController controller = CarouselController();
  List<int> aray = [1, 2, 3, 4, 5];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: double.infinity,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Column(
        children: [
          Gap(size.height * 0.05),
          const TitleA(
            title: Constants.portfolio,
            fontSize: 45,
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
                child: Image.asset(
                  "images/personImage.png",
                  fit: BoxFit.cover,
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
    );
  }

  Widget buildIndector() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: aray.length,
        effect: const JumpingDotEffect(
          activeDotColor: Color.fromRGBO(252, 74, 26, 1),
          dotColor: Color.fromRGBO(250, 126, 37, 0.617),
        ),
      );
}
