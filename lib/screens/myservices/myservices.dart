import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        height: 975,
        width: double.infinity,
        color: const Color.fromRGBO(39, 50, 62, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(30),
            const TitleA(
              title: Constants.myService,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.08, vertical: size.height * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 400,
                            height: 300,
                            color: Colors.transparent,
                          ),
                          Gap(20),
                          SvgPicture.asset(
                            "vectors/icon1.svg",
                          )
                        ],
                      ),
                      Gap(100),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 400,
                            height: 300,
                            color: Colors.transparent,
                          ),
                          Gap(20),
                          SvgPicture.asset("vectors/icon1.svg")
                        ],
                      )
                    ],
                  ),
                  Gap(20),
                  SizedBox(
                    height: 700,
                    child: Image.asset(
                      "images/phone.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("vectors/icon1.svg"),
                          Gap(20),
                          Container(
                            width: 400,
                            height: 300,
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                      Gap(100),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("vectors/icon1.svg"),
                          Gap(20),
                          Container(
                            width: 400,
                            height: 300,
                            color: Colors.transparent,
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
}
