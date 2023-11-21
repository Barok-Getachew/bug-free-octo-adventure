import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';
import 'package:personal_portfolio/screens/myservices/myservices.dart';

class MyServiceTablet extends StatefulWidget {
  const MyServiceTablet({super.key});

  @override
  State<MyServiceTablet> createState() => _MyServiceTabletState();
}

class _MyServiceTabletState extends State<MyServiceTablet> {
  CarouselController controller = CarouselController();
  List<int> aray = [1, 2, 3, 4, 5];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.8,
      color: const Color.fromRGBO(39, 50, 62, 1),
      child: Column(
        children: [
          Gap(size.height * 0.045),
          SizedBox(
            height: size.height * 0.045,
            child: const TitleA(
              title: Constants.myService,
              fontSize: 20,
            ),
          ),
          Gap(size.height * 0.07),
          CarouselSlider.builder(
            itemCount: aray.length,
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
                        color:
                            Color.fromRGBO(39, 50, 62, 0.49).withOpacity(0.8),
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
                        Gap(size.height * 0.11),
                        SvgPicture.asset(
                          "vectors/icon1.svg",
                          height: size.height * 0.1,
                        ),
                        Gap(size.height * 0.0),
                        const TextTitle(title: "UI/UX Design"),
                        Gap(size.height * 0.025),
                        const TextDescriptionC(
                            description:
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt doloremque excepturi sit odit impedit, voluptas.")
                      ],
                    ),
                  ));
            },
            options: CarouselOptions(
              height: size.height * 0.6,
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
  }
}
