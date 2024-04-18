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
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 500,
                width: 500,
                child: Image.asset("assets/images/nabeel.png")),
            SizedBox(width: MediaQuery.of(context).size.width / 8),
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
                    "I’ve been working on flutter projects for over 3 years now.  From the start of my college years. Also I’ve been involved in making various applications from scratch to finish. ",
                    style: kSmallParaTextStyle,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  Text(
                    "I have designed myself over 10s of applications from scratch been involved in Figma designs, requirements gathering and defining. Also, designing the database.Code of frontend and backend everything. Launched 2 to 3 apps to play store.",
                    style: kSmallParaTextStyle,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
