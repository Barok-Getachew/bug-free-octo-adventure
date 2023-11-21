import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      color: const Color.fromRGBO(33, 37, 41, 1),
      child: Column(
        children: [
          Gap(size.width * 0.03),
          const TitleA(title: Constants.contactMe),
          Gap(size.width * 0.06),
          Row(
            children: [
              Gap(size.width * 0.1),
              const ContactContainer(),
              Gap(size.width * 0.03),
              const ContactContainer(),
              Gap(size.width * 0.03),
              const ContactContainer(),
            ],
          ),
          Gap(size.height * 0.1),
          Text("Made With,Flutter"),
        ],
      ),
    );
  }
}

class ContactContainer extends StatelessWidget {
  const ContactContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.26,
      height: size.height * 0.22,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(252, 74, 26, 1),
            Color.fromRGBO(250, 124, 37, 1),
            Color.fromRGBO(249, 147, 43, 1),
            Color.fromRGBO(247, 183, 51, 1)
          ]),
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Column(
        children: [
          Lottie.network(
              "https://lottie.host/d57baa5f-9a72-4a93-b9e2-1d8d6f8629a0/BBONZVbb6F.json",
              height: size.height * 0.12),
          Text("Location"),
          Text("Lorem Impsum solor deasnj adema serl skhbfdhf")
        ],
      ),
    );
  }
}
