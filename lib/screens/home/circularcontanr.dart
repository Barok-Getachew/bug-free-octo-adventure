import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String iconUrl;
  const CircularContainer(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: screenWidth * 0.06,
      height: screenWidth * 0.06,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: Color.fromARGB(39, 50, 62, 1), blurRadius: 10)
        ],
        color: Colors.white,
      ),
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.facebook,
              color: Colors.orange,
              size: size.width * 0.03,
            )),
      ),
    );
  }
}

class BigCircularContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String iconUrl;
  const BigCircularContainer(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.computer,
              color: Colors.orange,
              size: size.width * 0.013,
            )),
      ),
    );
  }
}
