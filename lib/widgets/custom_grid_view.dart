import 'package:flutter/material.dart';
import 'package:weesolve/utils/theme.dart';
import 'package:weesolve/widgets/custom_container.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.only(left: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width < 1000
              ? MediaQuery.of(context).size.width < 700
                  ? 1
                  : 2
              : 3,
          childAspectRatio: 2),
      children: <Widget>[
        CustomContainer(
            icon: CustomTheme().camera,
            title: 'Tailored Solutions',
            subtitle:
                'Custom software that aligns with your business objectives.'),
        CustomContainer(
            icon: CustomTheme().battery,
            title: 'Expert Support',
            subtitle:
                'Access to our team of specialists, ready to assist you.'),
        CustomContainer(
            icon: CustomTheme().box,
            title: 'Secure Technology',
            subtitle:
                'State-of-the-art security to protect your data integrity.'),
        CustomContainer(
            icon: CustomTheme().message,
            title: 'Scalable Growth',
            subtitle:
                'Solutions that grow with your business and its evolving needs.'),
        CustomContainer(
            icon: CustomTheme().cloud,
            title: 'Continuous Updates',
            subtitle: "Stay ahead with software that's always up-to-date."),
        CustomContainer(
            icon: CustomTheme().check,
            title: 'Global Reach',
            subtitle:
                'Connect with customers worldwide with our global solutions.'),
      ],
    );
  }
}
