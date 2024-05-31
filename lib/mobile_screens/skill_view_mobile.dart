import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/mobile_skill_card.dart';
import 'package:personal_portfolio/components/skills_rectangle.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class SkillViewMobile extends StatelessWidget {
  const SkillViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            RichText(
              text: TextSpan(
                style: kSubHeadingTextStyle,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Other ',
                  ),
                  TextSpan(
                    text: 'Skills',
                    style: TextStyle(
                      color: Colors.orange, // Your desired color
                      fontWeight: FontWeight.bold, // Optional
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Text(
                "Different tech stacks i have worked with.",
                style: kSmallParaTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MobileSkillCard(
                        icon: 'assets/images/github.png',
                        title: "Github",
                        description:
                            "Profound Experience in using Git and Github.",
                        image: "assets/images/github2.png"),
                    SizedBox(height: MediaQuery.of(context).size.height / 20),
                    MobileSkillCard(
                      icon: 'assets/images/firebase.png',
                      title: 'Firebase',
                      description:
                          'Firebase Firestore, Firebase Authentication and more',
                      image: 'assets/images/firebase2.png',
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MobileSkillCard(
                      icon: 'assets/images/web.png',
                      title: 'Web',
                      description:
                          'Have a profound experience in git and github.',
                      image: 'assets/images/web2.png',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 20),
                    MobileSkillCard(
                      icon: 'assets/images/postman.png',
                      title: 'Postman',
                      description:
                          'Have a profound experience in git and github.',
                      image: 'assets/images/postman2.png',
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
