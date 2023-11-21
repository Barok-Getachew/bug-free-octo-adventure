import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';
import 'package:personal_portfolio/screens/myservices/myservices.dart';

class MyServiceMobile extends StatefulWidget {
  const MyServiceMobile({super.key});

  @override
  State<MyServiceMobile> createState() => _MyServiceMobileState();
}

class _MyServiceMobileState extends State<MyServiceMobile> {
  CarouselController controller = CarouselController();
  List<int> aray = [1, 2, 3, 4, 5];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            itemCount: aray.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                  width: size.width * 0.8,
                  height: size.height * 0.2,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Column(
                      children: [
                        Gap(size.height * 0.07),
                        SvgPicture.asset(
                          "vectors/icon1.svg",
                          height: size.height * 0.07,
                        ),
                        Gap(size.height * 0.02),
                        const TextTitle(title: "UI/UX Design"),
                      ],
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
}
