import 'package:flutter/material.dart';

class WhyWeeSolv extends StatelessWidget {
  const WhyWeeSolv({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Why WeeSolv",
          style: TextStyle(
              color: Colors.white, fontSize: 51, fontWeight: FontWeight.w700),
        ),
        Text(
          "Unleash your potential",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w200),
        ),
        Wrap(
          children: [
            MyWidget(),
            MyWidget(),
            MyWidget(),
            MyWidget(),
            MyWidget(),
            MyWidget(),
            MyWidget(),
            MyWidget(),
          ],
        )
      ],
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.abc),
          Text(
            "Tailored Solution",
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          Text(
            "Custom software that aligns with your business objectives.",
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}
