import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
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
              return const ContactContainer();
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
        ],
      ),
    );
  }
}
