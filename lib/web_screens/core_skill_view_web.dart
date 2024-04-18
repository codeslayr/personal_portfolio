import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/skill_square.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class CoreSkillViewWeb extends StatelessWidget {
  const CoreSkillViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: kSubHeadingTextStyle,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'My ',
                  ),
                  TextSpan(
                    text: 'Core Skills',
                    style: TextStyle(
                      color: Colors.orange, // Your desired color
                      fontWeight: FontWeight.bold, // Optional
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageWithStackedButton(
                  image: "assets/images/flutter.png",
                  onPressed: () {},
                  text: 'Flutter',
                ),
                ImageWithStackedButton(
                  image: "assets/images/figma.png",
                  onPressed: () {},
                  text: 'Figma Designs',
                ),
                ImageWithStackedButton(
                  image: "assets/images/backend.png",
                  onPressed: () {},
                  text: 'Backend',
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 10),
          ],
        ),
      ),
    );
  }
}
