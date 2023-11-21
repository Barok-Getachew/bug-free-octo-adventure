import 'package:flutter/material.dart';
import 'package:personal_portfolio/Portfolio/portfoliotablet.dart';
import 'package:personal_portfolio/screens/aboutme/aboutMeTablet.dart';

import 'package:personal_portfolio/screens/contactme/tablatecontactme.dart';
import 'package:personal_portfolio/screens/home/hometablet.dart';
import 'package:personal_portfolio/screens/myservices/myserviceTablet.dart';

class FinalTabletHome extends StatelessWidget {
  const FinalTabletHome({super.key});

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
                // itemExtent: size.width,
                // diameterRatio: 0.4,
                children: const [
                  TabletHome(),
                  AboutMeTablet(),
                  MyServiceTablet(),
                  PortfolioTablet(),
                  TablateContactMe(),
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
