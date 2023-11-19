import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/screens/aboutme/aboutme.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        leading: const Text("Logo"),
        actions: const [
          ElevatedButtons(text: 'Home'),
          Gap(30),
          ElevatedButtons(text: 'AboutMe'),
          Gap(30),
          ElevatedButtons(text: 'MyServices'),
          Gap(30),
          ElevatedButtons(text: 'Portfolio'),
          Gap(30),
          ElevatedButtons(text: 'ContactMe'),
          Gap(50),
        ],
      ),
      body: Scrollbar(
        thickness: 10,
        interactive: false,
        trackVisibility: true,
        controller: controller,
        child: ListView(
          children: const [HomeScreen(), AboutMe(), MyServices()],
        ),
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
      width: size.height * 0.115,
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
              fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
