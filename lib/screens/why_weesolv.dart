import 'package:flutter/material.dart';
import 'package:weesolve/widgets/custom_grid_view.dart';

class WhyWeeSolv extends StatelessWidget {
  const WhyWeeSolv({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        LayoutBuilder(builder: (context, constraints) {
          return Text(
            "Why WeeSolv",
            style: TextStyle(
                color: Colors.white,
                fontSize: (MediaQuery.of(context).size.width < 700)
                    ? (MediaQuery.of(context).size.width < 400)
                        ? (MediaQuery.of(context).size.width < 200)
                            ? 12
                            : 17
                        : 25
                    : 51,
                fontWeight: FontWeight.w700),
          );
        }),
        const Text(
          "Unleash your potential",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w200),
        ),
        const Flexible(child: CustomGridView())
      ],
    );
  }
}
