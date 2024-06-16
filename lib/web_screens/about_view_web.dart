import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class AboutViewWeb extends StatelessWidget {
  const AboutViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 20),
        height: MediaQuery.of(context).size.height * 0.8,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 450,
                width: 500,
                child: Image.asset("assets/images/abd.png")),
            SizedBox(width: MediaQuery.of(context).size.width / 16),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Text(
                  "I have been actively working with Flutter for approximately three years, beginning during my college tenure. Throughout this period, I have successfully created and deployed multiple applications, managing the entire process from initial design in Figma to front-end development. My experience encompasses collaborating in small teams and building applications from the ground up, where I have undertaken various roles throughout the development lifecycle.",
                  style: kSmallParaTextStyle,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Text(
                  "I have designed and developed over ten unique applications, with a strong emphasis on delivering outstanding user interfaces (UI) and user experiences (UX). My approach is characterized by innovation and a commitment to creating exceptional and distinctive applications. To date, I have successfully launched 2 to 3 apps on the Play Store.",
                  style: kSmallParaTextStyle,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
              ],
            )),
            SizedBox(
              width: 80,
            )
          ],
        ),
      ),
    );
  }
}
