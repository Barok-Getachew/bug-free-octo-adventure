import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        height: size.height,
        width: double.infinity,
        color: const Color.fromRGBO(39, 50, 62, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(size.height * 0.05),
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
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextTitle(title: "UI/UX Design"),
                                TextDescriptionL(
                                    description:
                                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt doloremque excepturi sit odit impedit, voluptas.")
                              ],
                            ),
                          ),
                          Gap(size.height * 0.03),
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
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                TextTitle(title: "UI/UX Design"),
                                TextDescriptionL(
                                    description:
                                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt doloremque excepturi sit odit impedit, voluptas.")
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
                    height: 700,
                    child: Image.asset(
                      "images/phone.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(size.height * 0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("vectors/icon1.svg"),
                          Gap(size.height * 0.03),
                          Container(
                            width: 400,
                            height: 300,
                            color: Colors.transparent,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextTitle(title: "UI/UX Design"),
                                TextDescription(
                                    description:
                                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt doloremque excepturi sit odit impedit, voluptas.")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gap(size.height * 0.08),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset("vectors/icon1.svg"),
                          Gap(size.height * 0.03),
                          Container(
                            width: 400,
                            height: 300,
                            color: Colors.transparent,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextTitle(title: "UI/UX Design"),
                                TextDescription(
                                    description:
                                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt doloremque excepturi sit odit impedit, voluptas.")
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
}

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.plusJakartaSans(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
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
      style: GoogleFonts.plusJakartaSans(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),
      textAlign: TextAlign.left,
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
      style: GoogleFonts.plusJakartaSans(
          fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),
      textAlign: TextAlign.right,
    );
  }
}
