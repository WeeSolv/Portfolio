import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:
          Alignment.lerp(Alignment.topCenter, Alignment.bottomCenter, 0.3)!,
      children: [
        Image(
          image: const AssetImage('asset/hello.png'),
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        const FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.0),
            child: Column(
              children: [
                Text(
                  "Innovative Text Solutions",
                  style: TextStyle(color: Colors.white, fontSize: 96),
                ),
                Text(
                  "Bridging concepts with reality",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}