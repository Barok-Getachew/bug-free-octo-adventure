import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/Portfolio/portfolio.dart';
import 'package:personal_portfolio/screens/aboutme/aboutme.dart';
import 'package:personal_portfolio/screens/contactme/contactMe.dart';

import 'package:personal_portfolio/screens/home/homescreen.dart';
import 'package:personal_portfolio/screens/myservices/myservices.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeFinal extends StatefulWidget {
  const HomeFinal({super.key});

  @override
  State<HomeFinal> createState() => _HomeFinalState();
}

class _HomeFinalState extends State<HomeFinal> {
  final ScrollController scrollController = ScrollController();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  List<Widget> screens = [
    const HomeScreen(),
    const AboutMe(),
    const MyServices(),
    const Portfolio(),
    const ContactMe(),
  ];
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
              controller: scrollController,
              child: ScrollablePositionedList.builder(
                itemCount: screens.length,
                itemBuilder: (context, index) => screens[index],
                itemScrollController: itemScrollController,
                scrollOffsetController: scrollOffsetController,
                itemPositionsListener: itemPositionsListener,
                scrollOffsetListener: scrollOffsetListener,
              )),
          Positioned(
              top: size.height * 0.02,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Gap(size.width * 0.1),
                  const Text("Hello"),
                  Gap(size.width * 0.46),
                  Row(
                    children: [
                      ElevatedButtons(
                        text: "Home",
                        onpressed: () => itemScrollController.scrollTo(
                            index: 0,
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutCubic),
                      ),
                      ElevatedButtons(
                        text: "AbouteMe",
                        onpressed: () => itemScrollController.scrollTo(
                            index: 1,
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutCubic),
                      ),
                      ElevatedButtons(
                        text: "Services",
                        onpressed: () => itemScrollController.scrollTo(
                            index: 2,
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutCubic),
                      ),
                      ElevatedButtons(
                        text: "Portfolio",
                        onpressed: () => itemScrollController.scrollTo(
                            index: 3,
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutCubic),
                      ),
                      ElevatedButtons(
                        text: "ContactMe",
                        onpressed: () => itemScrollController.scrollTo(
                            index: 4,
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutCubic),
                      ),
                      Gap(size.width * 0.25),
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
  final VoidCallback? onpressed;
  const ElevatedButtons({super.key, required this.text, this.onpressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.height * 0.14,
      height: size.height * 0.035,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        splashColor: Colors.white54,
        highlightColor: Colors.white54,
        hoverColor: const Color.fromARGB(161, 255, 86, 34),
        onPressed: onpressed,
        child: Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
