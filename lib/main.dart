import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:personal_portfolio/screens/FinalScreen/final.dart';

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
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3)).then((value) {
      Get.to(const Final());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.purple.shade100,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
