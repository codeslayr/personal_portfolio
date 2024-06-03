import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class AboutViewMobile extends StatelessWidget {
  const AboutViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 30),
            RichText(
              text: TextSpan(
                style: kSubHeadingTextStyle,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'About ',
                  ),
                  TextSpan(
                    text: 'me',
                    style: TextStyle(
                      color: Colors.orange, // Your desired color
                      fontWeight: FontWeight.bold, // Optional
                    ),
                  ),
                  TextSpan(
                    text: '?',
                  ),
                ],
              ),
            ),
            Container(
                height: 500,
                width: 500,
                child: Image.asset("assets/images/abd.png")),
            SizedBox(height: MediaQuery.of(context).size.width / 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Text(
                  "I’ve been working with Flutter for over three years, starting from my college days. I’ve created and deployed several applications, handling everything from initial design in Figma to coding both front-end and back-end. My experience spans working in small teams and building applications from scratch, taking on multiple roles throughout the development process.",
                  style: kSmallParaTextStyle,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Text(
                  "I’ve designed and built over ten unique applications, focusing on making them stand out in terms of UI and UX. I thrive on doing things differently, ensuring my apps offer an exceptional user experience. So far, I’ve successfully launched 2 to 3 apps on the Play Store.",
                  style: kSmallParaTextStyle,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
