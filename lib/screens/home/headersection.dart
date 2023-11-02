import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  const Header(
      {super.key, required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: screenHeight * 0.04,
          left: screenWidth * 0.04,
          right: screenWidth * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.deepOrange,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavText(navText: "ContactMe"),
              SizedBox(
                width: 15,
              ),
              NavText(navText: "ContactMe"),
              SizedBox(
                width: 15,
              ),
              NavText(navText: "ContactMe"),
              SizedBox(
                width: 15,
              ),
              NavText(navText: "ContactMe"),
              SizedBox(
                width: 15,
              ),
              NavText(navText: "ContactMe"),
            ],
          )
        ],
      ),
    );
  }
}

class NavText extends StatelessWidget {
  final String navText;
  const NavText({super.key, required this.navText});

  @override
  Widget build(BuildContext context) {
    return Text(
      navText,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }
}
