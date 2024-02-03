import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {},
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
