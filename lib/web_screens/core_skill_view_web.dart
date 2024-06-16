import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/skill_square.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class CoreSkillViewWeb extends StatefulWidget {
  const CoreSkillViewWeb(
      {super.key,
      required this.toFlutter,
      required this.toFigma,
      required this.toFlutterWeb});

  final Function toFlutter;
  final Function toFigma;
  final Function toFlutterWeb;

  @override
  State<CoreSkillViewWeb> createState() => _CoreSkillViewWebState();
}

class _CoreSkillViewWebState extends State<CoreSkillViewWeb> {
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
                SizedBox(width: MediaQuery.of(context).size.width / 8),
                Expanded(
                  child: ImageWithStackedButton(
                    image: "assets/images/flutter.png",
                    onPressed: () {
                      setState(() {
                        widget.toFlutter();
                      });
                    },
                    text: 'Flutter',
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: ImageWithStackedButton(
                    image: "assets/images/figma.png",
                    onPressed: () {
                      setState(() {
                        widget.toFigma();
                      });
                    },
                    text: 'Figma Designs',
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: ImageWithStackedButton(
                    image: "assets/images/dart.png",
                    onPressed: () {
                      setState(() {
                        widget.toFlutterWeb();
                      });
                    },
                    text: 'Frontend',
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 8),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 10),
          ],
        ),
      ),
    );
  }
}
