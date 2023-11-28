import 'package:flutter/material.dart';

class CircularContainerT extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String iconUrl;
  final VoidCallback ontap;
  const CircularContainerT(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.iconUrl,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontap,
      child: Container(
        width: screenWidth * 0.07,
        height: screenWidth * 0.07,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Color.fromARGB(39, 50, 62, 1), blurRadius: 10)
          ],
          color: Colors.white,
        ),
        child: Center(
            child: SizedBox(
                width: size.width * 0.02, child: Image.asset(iconUrl))),
      ),
    );
  }
}

class CircularContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String iconUrl;
  final VoidCallback ontap;
  const CircularContainer(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.iconUrl,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontap,
      child: Container(
        width: screenWidth * 0.07,
        height: screenWidth * 0.07,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Color.fromARGB(39, 50, 62, 1), blurRadius: 10)
          ],
          color: Colors.white,
        ),
        child: Center(
            child: SizedBox(
                width: size.width * 0.034, child: Image.asset(iconUrl))),
      ),
    );
  }
}

class BigCircularContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String iconUrl;
  final VoidCallback ontap;
  const BigCircularContainer(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.iconUrl,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: ontap,
      child: Container(
        width: screenWidth * 0.03,
        height: screenWidth * 0.03,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Color.fromARGB(39, 50, 62, 1), blurRadius: 10)
          ],
          color: Colors.white,
        ),
        child: Center(
            child: SizedBox(
                width: size.width * 0.015, child: Image.asset(iconUrl))),
      ),
    );
  }
}
