import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:personal_portfolio/components/showcase_rectangle.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class FlutterViewWeb extends StatelessWidget {
  const FlutterViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 50, // Fixed height for the Marquee widget
              child: Marquee(
                text: 'Flutter ·',
                style: kSubHeadingTextStyle,
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 16.0,
                velocity: 100.0,
                // pauseAfterRound: Duration(seconds: 1),
                startPadding: 10.0,
                // accelerationDuration: Duration(seconds: 1),
                // accelerationCurve: Curves.linear,
                // decelerationDuration: Duration(milliseconds: 500),
                // decelerationCurve: Curves.easeOut,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageContainer(
                    width: 420,
                    height: 250,
                    imagePath: "assets/images/bl1.png"),
                CustomImageContainer(
                    width: 328,
                    height: 250,
                    imagePath: "assets/images/pgc2.png"),
                CustomImageContainer(
                    width: 600,
                    height: 250,
                    imagePath: "assets/images/pgc1.png"),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 20),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CustomImageContainer(
                            width: 420,
                            height: 250,
                            imagePath: "assets/images/bl2.png"),
                        SizedBox(width: MediaQuery.of(context).size.width / 20),
                        Container(
                          width: 300,
                          height: 200,
                          padding: EdgeInsets.all(26),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Flutter",
                                    style: kSubHeadingTextStyle,
                                  ),
                                  Text(
                                    "Flutter designs\nby me",
                                    style: kSmallParaTextStyle,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/images/star.png"))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 20),
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width / 40),
                        CustomImageContainer(
                            width: 560,
                            height: 250,
                            imagePath: "assets/images/pgc3.png"),
                        SizedBox(width: MediaQuery.of(context).size.width / 80),
                        CustomImageContainer(
                            width: 340,
                            height: 250,
                            imagePath: "assets/images/bl3.png"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 20),
                CustomImageContainer(
                    width: 300,
                    height: 400,
                    imagePath: "assets/images/mobile.png")
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 10),
          ],
        ),
      ),
    );
  }
}
