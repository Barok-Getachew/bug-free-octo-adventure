import 'package:flutter/material.dart';
import 'package:personal_portfolio/Portfolio/mobileportfolio.dart';
import 'package:personal_portfolio/Portfolio/portfolio.dart';
import 'package:personal_portfolio/screens/aboutme/homeaboutme.dart';
import 'package:personal_portfolio/screens/contactme/mobileContactme.dart';

import 'package:personal_portfolio/screens/home/homemobile.dart';
import 'package:personal_portfolio/screens/myservices/mobilemyservices.dart';

class MobileFinal extends StatelessWidget {
  const MobileFinal({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        ),
      ),
      body: Builder(
        builder: (context) => Stack(
          children: [
            Scrollbar(
              thickness: 10,
              interactive: false,
              trackVisibility: true,
              child: ListView(
                children: const [
                  MobileHome(),
                  MobileAboutMe(),
                  MyServiceMobile(),
                  PortfolioMbile(),
                  ContactMeMobile()
                ],
              ),
            ),
            Positioned(
              top: size.width * 0.025,
              left: size.width * 0.025,
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  size: size.width * 0.035,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
