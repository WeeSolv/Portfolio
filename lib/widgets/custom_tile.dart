import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.subtitle});
  final String leading;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FittedBox(
        child: Row(
          children: [
            SizedBox(
              width: constraints.maxWidth * 0.3,
              child: Text(
                leading,
                style: const TextStyle(
                    fontSize: 96,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
