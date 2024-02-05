import 'package:flutter/material.dart';
import 'package:weesolve/utils/theme.dart';
import 'package:weesolve/widgets/custom_button.dart';
import 'package:weesolve/widgets/custom_tile.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          Alignment.lerp(Alignment.centerLeft, Alignment.centerRight, 0.2),
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 100),
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Getting Started",
                style: TextStyle(
                    fontSize: (constraints.maxWidth < 700)
                        ? (constraints.maxWidth < 400)
                            ? (constraints.maxWidth < 200)
                                ? 12
                                : 17
                            : 25
                        : 51,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
            const CustomTile(
              leading: '1',
              title: 'Register Online',
              subtitle:
                  'Create your WeeSolv account to begin your journey with us.',
            ),
            const Divider(color: Color(0xFF566172)),
            const CustomTile(
              leading: '2',
              title: 'Choose Services',
              subtitle:
                  'Select from a variety of software services tailored to your needs.',
            ),
            const Divider(color: Color(0xFF566172)),
            const CustomTile(
                leading: '3',
                title: 'Enjoy Innovation',
                subtitle:
                    'Implement our solutions and watch your business transform.'),
            const Divider(color: Color(0xFF566172)),
            Center(
              child: CustomButton(
                color: CustomTheme().buttonPurple,
                text: 'Work for us',
              ),
            )
          ],
        );
      }),
    );
  }
}
