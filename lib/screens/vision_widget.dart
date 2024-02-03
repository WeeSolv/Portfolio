import 'package:flutter/material.dart';
import 'package:weesolve/utils/theme.dart';

class VisionWidget extends StatelessWidget {
  const VisionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 614,
      margin: const EdgeInsets.all(144),
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Our Vision",
              style: TextStyle(
                  color: CustomTheme().buttonColor,
                  fontSize: (constraints.maxWidth < 400) ? 14 : 28,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "WeeSolv drives innovation with cutting-edge software services designed for the modern enterprise",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: (constraints.maxWidth < 700)
                      ? (constraints.maxWidth < 400)
                          ? (constraints.maxWidth < 200)
                              ? 12
                              : 17
                          : 25
                      : 51,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Our Commitment",
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: (constraints.maxWidth < 400) ? 11 : 22),
            )
          ],
        );
      }),
    );
  }
}
