import 'package:flutter/material.dart';
import 'package:weesolve/screens/hero_widget.dart';
import 'package:weesolve/screens/vision_widget.dart';
import 'package:weesolve/screens/why_weesolv.dart';
import 'package:weesolve/utils/theme.dart';
import 'package:weesolve/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
          fontFamily: 'Inter',
          colorScheme: ColorScheme.fromSeed(seedColor: CustomTheme().primary)),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme().primary,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 59,
        backgroundColor: CustomTheme().primary,
        title: const Text(
          "WeeSolv",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CustomButton(
              color: CustomTheme().buttonColor,
            ),
          )
        ],
      ),
      body: ListView(
        children: const <Widget>[HeroWidget(), VisionWidget(), WhyWeeSolv()],
      ),
    );
  }
}
