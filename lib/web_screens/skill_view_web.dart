import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/skills_rectangle.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class SkillViewWeb extends StatelessWidget {
  const SkillViewWeb({super.key});

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
            Text(
              "Different tech stacks i have worked with.",
              style: kSmallParaTextStyle,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomContainer(
                      width: 460,
                      height: 300,
                      image: 'assets/images/github.png',
                      title: 'Github',
                      subtitle: 'Have a profound experience in git and github.',
                      image2: 'assets/images/github2.png',
                      i2width: 179,
                      i2height: 256,
                    ),
                    CustomContainer(
                        width: 712,
                        height: 235,
                        image: 'assets/images/firebase.png',
                        title: "Firebase",
                        subtitle:
                            "Firebase Firestore, Firebase Authentication and more",
                        image2: 'assets/images/firebase2.png',
                        i2width: 222,
                        i2height: 200)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomContainer2(
                        width: 350,
                        height: 340,
                        image: 'assets/images/postman.png',
                        title: "Postman",
                        subtitle: "Testing APIs and automating using postman.",
                        image2: 'assets/images/postman2.png',
                        i2width: 304,
                        i2height: 150),
                    CustomContainer2(
                        width: 350,
                        height: 340,
                        image: 'assets/images/playstore.png',
                        title: "Play Console",
                        subtitle:
                            "Publishing apps on playstore and managing them.",
                        image2: 'assets/images/playstore2.png',
                        i2width: 304,
                        i2height: 150),
                    CustomContainer(
                      width: 460,
                      height: 300,
                      image: 'assets/images/web.png',
                      title: 'Web',
                      subtitle: 'Utilizing Flutter web for web applications.',
                      image2: 'assets/images/web2.png',
                      i2width: 179,
                      i2height: 256,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 10),
          ],
        ),
      ),
    );
  }
}
