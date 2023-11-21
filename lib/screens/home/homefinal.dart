import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/Portfolio/portfolio.dart';
import 'package:personal_portfolio/screens/aboutme/aboutme.dart';
import 'package:personal_portfolio/screens/contactme/contactMe.dart';
import 'package:personal_portfolio/screens/home/homescreen.dart';
import 'package:personal_portfolio/screens/myservices/myservices.dart';

class HomeFinal extends StatefulWidget {
  const HomeFinal({super.key});

  @override
  State<HomeFinal> createState() => _HomeFinalState();
}

class _HomeFinalState extends State<HomeFinal> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Scrollbar(
            thickness: 10,
            interactive: false,
            trackVisibility: true,
            controller: controller,
            child: ListView(
              children: const [
                HomeScreen(),
                AboutMe(),
                MyServices(),
                Portfolio(),
                ContactMe(),
              ],
            ),
          ),
          Positioned(
              top: size.height * 0.02,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gap(size.width * 0.1),
                  Text("Hello"),
                  Gap(size.width * 0.55),
                  const Row(
                    children: [
                      ElevatedButtons(text: "Home"),
                      ElevatedButtons(text: "AbouteMe"),
                      ElevatedButtons(text: "Services"),
                      ElevatedButtons(text: "Portfolio"),
                      ElevatedButtons(text: "ContactMe"),
                    ],
                  ),
                  Gap(size.width * 0.5),
                ],
              )),
        ],
      ),
    );
  }
}

class ElevatedButtons extends StatelessWidget {
  final String text;
  const ElevatedButtons({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.height * 0.13,
      height: size.height * 0.035,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        splashColor: Colors.white54,
        highlightColor: Colors.white54,
        hoverColor: Colors.deepOrange,
        onPressed: () {},
        child: Text(
          text,
          style: GoogleFonts.plusJakartaSans(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
