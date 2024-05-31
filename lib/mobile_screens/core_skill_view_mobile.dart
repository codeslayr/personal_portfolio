import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/skill_square.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class CoreSkillViewMobile extends StatefulWidget {
  const CoreSkillViewMobile(
      {super.key,
      required this.toFlutter,
      required this.toFigma,
      required this.toFlutterWeb});

  final Function toFlutter;
  final Function toFigma;
  final Function toFlutterWeb;

  @override
  State<CoreSkillViewMobile> createState() => _CoreSkillViewMobileState();
}

class _CoreSkillViewMobileState extends State<CoreSkillViewMobile> {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageWithStackedButton(
                    image: "assets/images/flutter.png",
                    onPressed: () {
                      setState(() {
                        widget.toFlutter();
                      });
                    },
                    text: 'Flutter',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  ImageWithStackedButton(
                    image: "assets/images/figma.png",
                    onPressed: () {
                      setState(() {
                        widget.toFigma();
                      });
                    },
                    text: 'Figma Designs',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  ImageWithStackedButton(
                    image: "assets/images/backend.png",
                    onPressed: () {
                      setState(() {
                        widget.toFlutterWeb();
                      });
                    },
                    text: 'Backend',
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
