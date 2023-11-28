import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:personal_portfolio/controller/portfoliocontrolller.dart';

import 'package:personal_portfolio/screens/FinalScreen/homefinal.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Set status bar color to transparent
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: const TextTheme(
              bodyLarge: TextStyle(fontFamily: "PlusJakartaSans"),
              bodyMedium: TextStyle(fontFamily: "PlusJakartaSans"),
              bodySmall: TextStyle(fontFamily: "PlusJakartaSans")),
          useMaterial3: true,
        ),
        home: const WellcomeScreen());
  }
}

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  WellcomeScreenState createState() => WellcomeScreenState();
}

class WellcomeScreenState extends State<WellcomeScreen> {

  // Use a Future to fetch data only once
  late Future<void> _fetchDataFuture;

  @override
  void initState() {
    super.initState();
    // Initialize the Future in initState
    _fetchDataFuture = _fetchData();
  }

  Future<void> _fetchData() async {
    await Get.put(PortfolioController()).FetchPortfolio();
    // Set the flag to true to indicate that data has been fetched
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: FutureBuilder(
        // Use the pre-initialized Future
        future: _fetchDataFuture,
        builder: (context, snapshot) {
          // Only show loading indicator if data is still being fetched
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SizedBox(
                width: double.infinity,
                height: size.height,
                child: const LoadingIndicator(
                  indicatorType: Indicator.orbit,

                  /// Required, The loading type of the widget
                  colors: [
                    Color.fromRGBO(252, 74, 26, 1),
                    Color.fromRGBO(250, 124, 37, 1),
                    Color.fromRGBO(249, 147, 43, 1),
                    Color.fromRGBO(247, 183, 51, 1)
                  ],

                  /// Optional, The color collections
                  strokeWidth: 2,
                  pause: false,

                  /// Optional, The stroke of the line, only applicable to widget which contains line
                  backgroundColor: Color.fromRGBO(39, 50, 62, 1),

                  /// Optional, Background of the widget
                  pathBackgroundColor: Color.fromRGBO(39, 50, 62, 1),

                  /// Optional, the stroke backgroundColor
                ));
          } else {
            return HomeFinal();
          }
        },
      ),
    );
  }
}
