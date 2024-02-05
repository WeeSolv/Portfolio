import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {
          launchUrl(Uri.parse('https://forms.gle/La1BoFA2pABjiVAC8'));
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith((states) =>
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)))),
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => color)),
        child: const Text(
          "Work with us",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ));
  }
}
