import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/data/constants.dart';
import 'package:personal_portfolio/screens/aboutme/title.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> with TickerProviderStateMixin {
  CarouselController controller = CarouselController();
  List<int> aray = [
    1,
    2,
    3,
  ];
  List<Widget> contactMobile = [
    ContactContainer(
      location: 'Location',
      data: Get.find<PortfolioController>().my_contact.location,
      lottieAdress:
          "https://lottie.host/4326ac2a-e2da-4694-9541-ef5ca10cc4ac/d0pe7Rh3lT.json",
    ),
    ContactContainer(
      location: '@Email',
      data: Get.find<PortfolioController>().my_contact.emialAdress,
      lottieAdress:
          "https://lottie.host/38623d9a-2656-451c-879b-01dd1d4cde17/8M0V5djVWH.json",
    ),
    ContactContainer(
      location: 'PhoneNumber',
      data: Get.find<PortfolioController>().my_contact.phoneNumber,
      lottieAdress:
          "https://lottie.host/4ea403bd-c3ff-4971-9011-e4cbc8bdda2d/9TEgNjQc6D.json",
    )
  ];
  int activeIndex = 0;

  late AnimationController _Acontroller;
  @override
  void initState() {
    super.initState();
    _Acontroller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _Acontroller.addListener(() {
      print(_Acontroller.value);
      //  if the full duration of the animation is 8 secs then 0.5 is 4 secs
      if (_Acontroller.value > 0.5) {
// When it gets there hold it there.
        _Acontroller.value = 0.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Get.put(PortfolioController());
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.biggest.width > 1450) {
          return Container(
            height: size.height * 0.6,
            color: const Color.fromRGBO(33, 37, 41, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(size.width * 0.02),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.1),
                  child: SizedBox(
                    height: size.height * 0.06,
                    child: const TitleA(
                      title: Constants.contactMe,
                      fontSize: 40,
                    ),
                  ),
                ),
                Gap(size.width * 0.02),
                Row(
                  children: [
                    Gap(size.width * 0.1),
                    BigContactContainer(
                      location: "Location",
                      data: Get.find<PortfolioController>().my_contact.location,
                      lottieAddress:
                          "https://lottie.host/4326ac2a-e2da-4694-9541-ef5ca10cc4ac/d0pe7Rh3lT.json",
                    ),
                    Gap(size.width * 0.03),
                    BigContactContainer(
                      location: "@Email",
                      data: Get.find<PortfolioController>()
                          .my_contact
                          .emialAdress,
                      lottieAddress:
                          "https://lottie.host/38623d9a-2656-451c-879b-01dd1d4cde17/8M0V5djVWH.json",
                    ),
                    Gap(size.width * 0.02),
                    BigContactContainer(
                      location: "Phone number",
                      data: Get.find<PortfolioController>()
                          .my_contact
                          .phoneNumber,
                      lottieAddress:
                          "https://lottie.host/4ea403bd-c3ff-4971-9011-e4cbc8bdda2d/9TEgNjQc6D.json",
                    ),
                  ],
                ),
                Gap(size.height * 0.1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Developed in  ",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    Icon(
                      Icons.favorite,
                      weight: size.width * 0.03,
                      color: Colors.orangeAccent,
                    ),
                    Text(
                      " With ",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    Text(
                      "Flutter",
                      style: GoogleFonts.poppins(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        if (constraints.biggest.width > 1000) {
          return Container(
              height: size.height * 0.9,
              color: const Color.fromRGBO(33, 37, 41, 1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(size.width * 0.03),
                    SizedBox(
                      height: size.height * 0.042,
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.19),
                        child: const TitleA(
                          title: Constants.contactMe,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Gap(size.width * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ContactContainerT(
                          location: "Location",
                          data: Get.find<PortfolioController>()
                              .my_contact
                              .location,
                          lottieAdress:
                              "https://lottie.host/4326ac2a-e2da-4694-9541-ef5ca10cc4ac/d0pe7Rh3lT.json",
                        ),
                        Gap(size.width * 0.03),
                        ContactContainerT(
                          location: "@Email",
                          data: Get.find<PortfolioController>()
                              .my_contact
                              .emialAdress,
                          lottieAdress:
                              "https://lottie.host/38623d9a-2656-451c-879b-01dd1d4cde17/8M0V5djVWH.json",
                        ),
                        Gap(size.width * 0.02),
                      ],
                    ),
                    Gap(size.width * 0.06),
                    ContactContainerT(
                      location: "Phone number",
                      data: Get.find<PortfolioController>()
                          .my_contact
                          .phoneNumber,
                      lottieAdress:
                          "https://lottie.host/4ea403bd-c3ff-4971-9011-e4cbc8bdda2d/9TEgNjQc6D.json",
                    ),
                    Gap(size.height * 0.1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Developed in  ",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Icon(
                          Icons.favorite,
                          weight: size.width * 0.03,
                          color: Colors.orangeAccent,
                        ),
                        Text(
                          " With ",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                        Text(
                          "Flutter",
                          style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ]));
        } else {
          return Container(
            width: double.infinity,
            height: size.height * 0.55,
            color: const Color.fromRGBO(33, 37, 41, 1),
            child: Column(
              children: [
                Gap(size.height * 0.045),
                SizedBox(
                  height: size.height * 0.045,
                  child: const TitleA(
                    title: Constants.contactMe,
                    fontSize: 16,
                  ),
                ),
                Gap(size.height * 0.07),
                CarouselSlider.builder(
                  itemCount: contactMobile.length,
                  itemBuilder: (context, index, realIndex) {
                    return contactMobile[index];
                  },
                  options: CarouselOptions(
                    height: size.height * 0.25,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    enlargeFactor: 0.4,
                    enlargeCenterPage: true,
                    reverse: false,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                  ),
                ),
                Gap(size.height * 0.09),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Developed in  ",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    Icon(
                      Icons.favorite,
                      weight: size.width * 0.03,
                      color: Colors.orangeAccent,
                    ),
                    Text(
                      " With ",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    Text(
                      "Flutter",
                      style: GoogleFonts.poppins(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

class ContactContainer extends StatefulWidget {
  final String location;
  final String data;
  final String lottieAdress;
  const ContactContainer(
      {super.key,
      required this.location,
      required this.data,
      required this.lottieAdress});

  @override
  State<ContactContainer> createState() => _ContactContainerState();
}

class _ContactContainerState extends State<ContactContainer>
    with TickerProviderStateMixin {
  late AnimationController _Acontroller;
  @override
  void initState() {
    super.initState();
    _Acontroller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _Acontroller.addListener(() {
      print(_Acontroller.value);
      //  if the full duration of the animation is 8 secs then 0.5 is 4 secs
      if (_Acontroller.value > 0.5) {
// When it gets there hold it there.
        _Acontroller.value = 0.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: size.height * 0.12,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 50, 62, 1),
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Column(
        children: [
          Gap(size.height * 0.01),
          Lottie.network(
            widget.lottieAdress,
            height: size.height * 0.12,
          ),
          Text(
            widget.location,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          Gap(size.height * 0.02),
          SelectableText(
            widget.data,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          )
        ],
      ),
    );
  }
}

class BigContactContainer extends StatefulWidget {
  final String location;
  final String data;
  final String lottieAddress;
  const BigContactContainer(
      {super.key,
      required this.location,
      required this.data,
      required this.lottieAddress});

  @override
  State<BigContactContainer> createState() => _BigContactContainerState();
}

class _BigContactContainerState extends State<BigContactContainer>
    with TickerProviderStateMixin {
  late AnimationController _Acontroller;
  @override
  void initState() {
    super.initState();
    _Acontroller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _Acontroller.addListener(() {
      print(_Acontroller.value);
      //  if the full duration of the animation is 8 secs then 0.5 is 4 secs
      if (_Acontroller.value > 0.5) {
// When it gets there hold it there.
        _Acontroller.value = 0.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.25,
      height: size.height * 0.3,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 50, 62, 1),
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Column(
        children: [
          Gap(size.height * 0.027),
          Lottie.network(
              controller: _Acontroller,
              widget.lottieAddress,
              height: size.height * 0.12),
          Text(
            widget.location,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          Gap(size.height * 0.0275),
          SelectableText(
            widget.data,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class ContactContainerT extends StatelessWidget {
  final String location;
  final String data;
  final String lottieAdress;
  const ContactContainerT(
      {super.key,
      required this.location,
      required this.data,
      required this.lottieAdress});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.25,
      height: size.height * 0.23,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(39, 50, 62, 1),
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Column(
        children: [
          SizedBox(
              width: size.width * 0.05,
              child: Lottie.network(lottieAdress, height: size.height * 0.12)),
          Text(
            location,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
          ),
          Gap(size.height * 0.0275),
          SelectableText(
            data,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
          )
        ],
      ),
    );
  }
}
