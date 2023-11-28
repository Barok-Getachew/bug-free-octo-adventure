import 'dart:js' as js;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/instance_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/data/constants.dart';

import 'package:personal_portfolio/screens/home/circularcontanr.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // @override
  // void initState() {
  //   PortfolioController().FetchPortfolio();
  //   // TODO: implement initState
  //   super.initState();
  // }
  double? _progress;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Get.put(PortfolioController());

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.biggest.width > 1450) {
          return MouseRegion(
            cursor: SystemMouseCursors.contextMenu,
            opaque: true,
            child: Container(
              height: size.height,
              color: const Color.fromRGBO(39, 50, 62, 1),
              child: Stack(
                children: [
                  Positioned(
                    top: -500,
                    // left: 0,
                    right: -550,
                    // bottom: 0,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.skew(9, 10),
                      child: SvgPicture.asset(
                        'vectors/blob.svg',
                        colorFilter: const ColorFilter.mode(
                            Color.fromRGBO(39, 50, 62, 0.535),
                            BlendMode.darken),
                        width: size.width * 1.2,
                        height: size.height * 1.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: size.height * 0.9,
                        width: size.width / 2,
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.only(left: size.width * 0.08),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Gap(size.height * 0.17),
                              Container(
                                height: size.height * 0.09,
                                width: size.width * 0.09,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(252, 74, 26, 1),
                                          Color.fromRGBO(250, 124, 37, 1),
                                          Color.fromRGBO(249, 147, 43, 1),
                                          Color.fromRGBO(247, 183, 51, 1)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50),
                                        bottomRight: Radius.circular(50))),
                                child: Center(
                                    child: Text(
                                  Constants.greeting,
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                )),
                              ),
                              Gap(size.height * 0.02),
                              Text(
                                Get.find<PortfolioController>()
                                    .PortfolioData
                                    .name,
                                style: GoogleFonts.poppins(
                                    fontSize: 85,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 4,
                                    color: Colors.white),
                              ),
                              Gap(size.height * 0.01),
                              DefaultTextStyle(
                                style: GoogleFonts.poppins(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 2,
                                    color: Colors.white),
                                child: AnimatedTextKit(
                                  repeatForever: true,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        Get.find<PortfolioController>()
                                            .services[0]),
                                    TypewriterAnimatedText(
                                        Get.find<PortfolioController>()
                                            .services[1]),
                                    TypewriterAnimatedText(
                                        Get.find<PortfolioController>()
                                            .services[2]),
                                    TypewriterAnimatedText(
                                        Get.find<PortfolioController>()
                                            .services[3]),
                                  ],
                                  onTap: () {},
                                ),
                              ),
                              Gap(size.height * 0.04),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  BigCircularContainer(
                                    screenWidth: size.width,
                                    screenHeight: size.height,
                                    iconUrl: 'vectors/instagram.png',
                                    ontap: () => js.context.callMethod('open', [
                                      "https://www.instagram.com/barok_getachew/"
                                    ]),
                                  ),
                                  Gap(size.height * 0.023),
                                  BigCircularContainer(
                                    screenWidth: size.width,
                                    screenHeight: size.height,
                                    iconUrl: 'vectors/linkedin.png',
                                    ontap: () => js.context.callMethod('open', [
                                      "https://www.linkedin.com/in/birukgetachew/"
                                    ]),
                                  ),
                                  Gap(size.height * 0.023),
                                  BigCircularContainer(
                                    screenWidth: size.width,
                                    screenHeight: size.height,
                                    iconUrl: 'vectors/github.png',
                                    ontap: () => js.context.callMethod('open',
                                        ["https://github.com/Barok-Getachew"]),
                                  ),
                                  Gap(size.height * 0.023),
                                  BigCircularContainer(
                                    screenWidth: size.width,
                                    screenHeight: size.height,
                                    iconUrl: 'vectors/medium.png',
                                    ontap: () => js.context.callMethod('open',
                                        ["https://medium.com/@leoseven59"]),
                                  ),
                                ],
                              ),
                              Gap(size.height * 0.06),
                              _progress != null
                                  ? const CircularProgressIndicator()
                                  : InkWell(
                                      onTap: () {
                                        FileDownloader.downloadFile(
                                          url:
                                              'https://drive.google.com/file/d/1aXxGQjy1SuMDnyKujwGJMHJvYqtW5vRb/view?usp=sharing',
                                          onProgress: (fileName, progress) {
                                            setState(() {
                                              _progress = progress;
                                            });
                                          },
                                          onDownloadCompleted: (path) {
                                            print("path $path");

                                            setState(() {
                                              _progress = null;
                                            });
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: size.height * 0.075,
                                        width: size.width * 0.14,
                                        decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color.fromRGBO(
                                                      252, 74, 26, 1),
                                                  Color.fromRGBO(
                                                      250, 124, 37, 1),
                                                  Color.fromRGBO(
                                                      249, 147, 43, 1),
                                                  Color.fromRGBO(
                                                      247, 183, 51, 1)
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                        child: Center(
                                            child: Text(
                                          Constants.download,
                                          style: GoogleFonts.poppins(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.white),
                                        )),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 1.6,
                        width: size.width / 2.3,
                        color: Colors.transparent,
                        child: Padding(
                          padding: EdgeInsets.only(right: size.height * 0.02),
                          child: Center(
                            child: Lottie.network(
                                "https://lottie.host/5ba3821f-8d0d-4b59-9c57-bf17912fbb18/dJXnQctGVS.json",
                                height: size.height * 1.2),

                            // Lottie.asset("assets/animations/a.json")
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        if (constraints.biggest.width > 1000) {
          return MouseRegion(
            cursor: SystemMouseCursors.contextMenu,
            opaque: true,
            child: Container(
              width: size.width * 0.7,
              height: size.height,
              color: const Color.fromRGBO(39, 50, 62, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(size.height * 0.17),
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.16,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(252, 74, 26, 1),
                              Color.fromRGBO(250, 124, 37, 1),
                              Color.fromRGBO(249, 147, 43, 1),
                              Color.fromRGBO(247, 183, 51, 1)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Center(
                        child: Text(
                      Constants.greeting,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    )),
                  ),
                  Gap(size.height * 0.02),
                  Text(
                    Get.find<PortfolioController>().PortfolioData.name,
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                        color: Colors.white),
                  ),
                  Gap(size.height * 0.02),
                  DefaultTextStyle(
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2,
                        color: Colors.white),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[0]),
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[1]),
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[2]),
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[3]),
                      ],
                      onTap: () {},
                    ),
                  ),
                  Gap(size.height * 0.08),
                  Container(
                    height: size.height * 0.08,
                    width: size.width * 0.24,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(252, 74, 26, 1),
                              Color.fromRGBO(250, 124, 37, 1),
                              Color.fromRGBO(249, 147, 43, 1),
                              Color.fromRGBO(247, 183, 51, 1)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                        child: Text(
                      Constants.download,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    )),
                  ),
                  Gap(size.height * 0.21),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Gap(size.width * 0.4),
                      SizedBox(
                        width: size.width * 0.04,
                        child: CircularContainerT(
                          screenWidth: size.width,
                          screenHeight: size.height,
                          iconUrl: 'vectors/instagram.png',
                          ontap: () => js.context.callMethod('open',
                              ["https://www.instagram.com/barok_getachew/"]),
                        ),
                      ),
                      Gap(size.height * 0.023),
                      SizedBox(
                        width: size.width * 0.04,
                        child: CircularContainerT(
                          screenWidth: size.width,
                          screenHeight: size.height,
                          iconUrl: 'vectors/linkedin.png',
                          ontap: () => js.context.callMethod('open',
                              ["https://www.linkedin.com/in/birukgetachew/"]),
                        ),
                      ),
                      Gap(size.height * 0.023),
                      SizedBox(
                        width: size.width * 0.04,
                        child: CircularContainerT(
                          screenWidth: size.width,
                          screenHeight: size.height,
                          iconUrl: 'vectors/github.png',
                          ontap: () => js.context.callMethod(
                              'open', ["https://github.com/Barok-Getachew"]),
                        ),
                      ),
                      Gap(size.height * 0.023),
                      SizedBox(
                        width: size.width * 0.04,
                        child: CircularContainerT(
                          screenWidth: size.width,
                          screenHeight: size.height,
                          iconUrl: 'vectors/medium.png',
                          ontap: () => js.context.callMethod(
                              'open', ["https://medium.com/@leoseven59"]),
                        ),
                      ),
                    ],
                  ),
                  Gap(size.height * 0.07)
                ],
              ),
            ),
          );
        } else {
          return MouseRegion(
            cursor: SystemMouseCursors.contextMenu,
            opaque: true,
            child: Container(
              height: size.height,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/personImage.png",
                    ),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Hello I'm",
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                  Gap(size.height * 0.025),
                  Text(
                    Get.find<PortfolioController>().PortfolioData.name,
                    style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Gap(size.height * 0.01),
                  DefaultTextStyle(
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2,
                        color: Colors.white),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[0]),
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[1]),
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[2]),
                        TypewriterAnimatedText(
                            Get.find<PortfolioController>().services[3]),
                      ],
                      onTap: () {},
                    ),
                  ),
                  Gap(size.height * 0.05),
                  Container(
                    height: size.height * 0.055,
                    width: size.width * 0.45,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(252, 74, 26, 1),
                              Color.fromRGBO(250, 124, 37, 1),
                              Color.fromRGBO(249, 147, 43, 1),
                              Color.fromRGBO(247, 183, 51, 1)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                    child: Center(
                        child: Text(
                      Constants.download,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    )),
                  ),
                  Gap(size.height * 0.06),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularContainer(
                        screenWidth: size.width,
                        screenHeight: size.height,
                        iconUrl: 'vectors/instagram.png',
                        ontap: () => js.context.callMethod('open',
                            ["https://www.instagram.com/barok_getachew/"]),
                      ),
                      Gap(size.height * 0.023),
                      CircularContainer(
                        screenWidth: size.width,
                        screenHeight: size.height,
                        iconUrl: 'vectors/linkedin.png',
                        ontap: () => js.context.callMethod('open',
                            ["https://www.linkedin.com/in/birukgetachew/"]),
                      ),
                      Gap(size.height * 0.023),
                      CircularContainer(
                        screenWidth: size.width,
                        screenHeight: size.height,
                        iconUrl: 'vectors/github.png',
                        ontap: () => js.context.callMethod(
                            'open', ["https://github.com/Barok-Getachew"]),
                      ),
                      Gap(size.height * 0.023),
                      CircularContainer(
                        screenWidth: size.width,
                        screenHeight: size.height,
                        iconUrl: 'vectors/medium.png',
                        ontap: () => js.context.callMethod(
                            'open', ["https://medium.com/@leoseven59"]),
                      ),
                    ],
                  ),
                  Gap(size.height * 0.05),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri urls = Uri.parse(url);
    if (!await launchUrl(urls)) {
      throw Exception('Could not launch $urls');
    }
  }
}
