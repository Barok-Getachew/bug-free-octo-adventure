import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String iconUrl;
  const CircularContainer(
      {super.key, required this.screenWidth, required this.screenHeight, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.04,
      height: screenWidth * 0.04,
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
            icon: const Icon(
              Icons.facebook,
              color: Colors.orange,
            )),
      ),
    );
  }
}
