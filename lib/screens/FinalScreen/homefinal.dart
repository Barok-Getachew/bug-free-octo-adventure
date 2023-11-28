import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/screens/Portfolio/portfolio.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/screens/aboutme/aboutme.dart';
import 'package:personal_portfolio/screens/contactme/contactMe.dart';

import 'package:personal_portfolio/screens/home/homescreen.dart';
import 'package:personal_portfolio/screens/myservices/myservices.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

// ignore: must_be_immutable
class HomeFinal extends StatelessWidget {
  HomeFinal({super.key});

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
    const Myservices(),
    const Portfolio(),
    const ContactMe(),
  ];

  bool _isdesktop = true;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Get.put(PortfolioController());
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        drawer: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(size.width * 0.1),
                bottomRight: Radius.circular(size.width * 0.1)),
          ),
          backgroundColor: const Color.fromRGBO(33, 37, 41, 1),
          child: Column(
            children: [
              Gap(size.width * 0.08),
              SizedBox(
                  child: Image.asset(
                'vectors/logo.png',
                width: size.width * 0.33,
                height: size.height * 0.12,
              )
                  // child: SvgPicture.asset('vectors/logo.svg'))
                  ),
              Gap(size.width * 0.03),
              const Divider(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              ElevatedButtons(
                  text: "Home",
                  onpressed: () {
                    itemScrollController.scrollTo(
                        index: 0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutCubic);
                    scaffoldKey.currentState?.openEndDrawer();
                  }),
              const Divider(
                color: Color.fromARGB(118, 255, 255, 255),
              ),
              Gap(size.width * 0.023),
              ElevatedButtons(
                  text: "Aboute",
                  onpressed: () {
                    itemScrollController.scrollTo(
                        index: 1,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutCubic);
                    scaffoldKey.currentState?.openEndDrawer();
                  }),
              const Divider(
                color: Color.fromARGB(146, 255, 255, 255),
              ),
              Gap(size.width * 0.023),
              ElevatedButtons(
                  text: "Services",
                  onpressed: () {
                    itemScrollController.scrollTo(
                        index: 2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutCubic);
                    scaffoldKey.currentState?.openEndDrawer();
                  }),
              const Divider(
                color: Color.fromARGB(89, 255, 255, 255),
              ),
              Gap(size.width * 0.023),
              ElevatedButtons(
                text: "Portfolio",
                onpressed: () {
                  itemScrollController.scrollTo(
                      index: 3,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCubic);
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              const Divider(
                color: Color.fromARGB(119, 255, 255, 255),
              ),
              Gap(size.width * 0.023),
              ElevatedButtons(
                  text: "Contact",
                  onpressed: () {
                    itemScrollController.scrollTo(
                        index: 4,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutCubic);
                    scaffoldKey.currentState?.openEndDrawer();
                  }),
              const Divider(
                color: Color.fromARGB(119, 255, 255, 255),
              ),
              Gap(size.height * 0.25),
              Text(
                "Biruk Getachew  @2023",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
        ),
        body:

            //  FutureBuilder(
            //     future: Get.find<PortfolioController>().FetchPortfolio(),
            //     builder: (context, snapshot) {
            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return SizedBox(
            //     height: size.height,
            //     width: double.infinity,
            //     child: const LoadingIndicator(
            //       indicatorType: Indicator.orbit,

            //       /// Required, The loading type of the widget
            //       colors: [
            //         Color.fromRGBO(252, 74, 26, 1),
            //         Color.fromRGBO(250, 124, 37, 1),
            //         Color.fromRGBO(249, 147, 43, 1),
            //         Color.fromRGBO(247, 183, 51, 1)
            //       ],

            //       /// Optional, The color collections
            //       strokeWidth: 2,
            //       pause: false,

            //       /// Optional, The stroke of the line, only applicable to widget which contains line
            //       backgroundColor: Color.fromRGBO(39, 50, 62, 1),

            //       /// Optional, Background of the widget
            //       pathBackgroundColor: Color.fromRGBO(39, 50, 62, 1),

            //       /// Optional, the stroke backgroundColor
            //     ),
            //   );
            // } else {
            // return
            LayoutBuilder(builder: (context, constraints) {
          if (constraints.biggest.width < 1450) {
            _isdesktop = false;
          } else {
            _isdesktop = true;
          }

          return Stack(
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
                  top: size.height * 0.01,
                  child: _isdesktop
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Gap(size.width * 0.08),
                            SizedBox(
                                child: Image.asset(
                              'vectors/logo.png',
                              width: size.width * 0.1,
                              height: size.height * 0.12,
                            )
                                // child: SvgPicture.asset('vectors/logo.svg'))
                                ),
                            Gap(size.width * 0.43),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButtons(
                                  text: "Home",
                                  onpressed: () =>
                                      itemScrollController.scrollTo(
                                          index: 0,
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.easeInOutCubic),
                                ),
                                ElevatedButtons(
                                  text: "Aboute",
                                  onpressed: () =>
                                      itemScrollController.scrollTo(
                                          index: 1,
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.easeInOutCubic),
                                ),
                                ElevatedButtons(
                                  text: "Services",
                                  onpressed: () =>
                                      itemScrollController.scrollTo(
                                          index: 2,
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.easeInOutCubic),
                                ),
                                ElevatedButtons(
                                  text: "Portfolio",
                                  onpressed: () =>
                                      itemScrollController.scrollTo(
                                          index: 3,
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.easeInOutCubic),
                                ),
                                ElevatedButtons(
                                  text: "Contact",
                                  onpressed: () =>
                                      itemScrollController.scrollTo(
                                          index: 4,
                                          duration: const Duration(seconds: 2),
                                          curve: Curves.easeInOutCubic),
                                ),
                                Gap(size.width * 0.23),
                              ],
                            ),
                            Gap(size.width * 0.4),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: size.width * 0.06,
                                  top: size.width * 0.04),
                              child: IconButton(
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    size: size.width * 0.04,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        )),
            ],
          );
        }));
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
