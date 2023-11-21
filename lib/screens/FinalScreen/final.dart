import 'package:flutter/material.dart';
import 'package:personal_portfolio/screens/FinalScreen/FinalTablet.dart';
import 'package:personal_portfolio/screens/FinalScreen/homefinal.dart';
import 'package:personal_portfolio/screens/FinalScreen/mobilefinal.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.biggest.width > 1450) {
          return HomeFinal();
        }
        if (constraints.biggest.width > 1000) {
          return FinalTabletHome();
        } else {
          return MobileFinal();
        }
      },
    );
  }
}
