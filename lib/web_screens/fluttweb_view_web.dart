import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:personal_portfolio/components/showcase_rectangle.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class FlutterWebViewWeb extends StatelessWidget {
  const FlutterWebViewWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
        // child: Container(
        //   color: Colors.white,
        //   child: Column(
        //     children: [
        //       SizedBox(
        //         height: 50, // Fixed height for the Marquee widget
        //         child: Marquee(
        //           text: 'Flutter Web ·',
        //           style: kSubHeadingTextStyle,
        //           scrollAxis: Axis.horizontal,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           blankSpace: 16.0,
        //           velocity: 100.0,
        //           // pauseAfterRound: Duration(seconds: 1),
        //           startPadding: 10.0,
        //           // accelerationDuration: Duration(seconds: 1),
        //           // accelerationCurve: Curves.linear,
        //           // decelerationDuration: Duration(milliseconds: 500),
        //           // decelerationCurve: Curves.easeOut,
        //         ),
        //       ),
        //       SizedBox(height: MediaQuery.of(context).size.height / 20),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           CustomImageContainer(
        //               aspectRatio: 16 / 9,
        //               width: width / 3.5,
        //               height: height / 2.5,
        //               imagePath: "assets/images/bl1.png"),
        //           SizedBox(width: 20),
        //           CustomImageContainer(
        //               aspectRatio: 16 / 9,
        //               width: width / 3.5,
        //               height: height / 2.5,
        //               imagePath: "assets/images/pgc2.png"),
        //           SizedBox(width: 20),
        //           CustomImageContainer(
        //               aspectRatio: 16 / 9,
        //               width: width / 3.5,
        //               height: height / 2.5,
        //               imagePath: "assets/images/pgc1.png"),
        //         ],
        //       ),
        //       SizedBox(height: 20),
        //       Row(
        //         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           CustomImageContainer(
        //               aspectRatio: 16 / 9,
        //               width: width / 3.5,
        //               height: height / 2.5,
        //               imagePath: "assets/images/bl1.png"),
        //           SizedBox(width: 20),
        //           CustomImageContainer(
        //               aspectRatio: 16 / 9,
        //               width: ((width / 3.5) * 2) + 20,
        //               height: height / 2.5,
        //               imagePath: "assets/images/pgc2.png"),
        //         ],
        //       ),
        //       SizedBox(height: 20),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           CustomImageContainer(
        //               aspectRatio: 16 / 9,
        //               width: ((width / 3.5) * 2) + 20,
        //               height: height / 2.5,
        //               imagePath: "assets/images/bl1.png"),
        //           SizedBox(width: 20),
        //           CustomImageContainer(
        //               aspectRatio: 16 / 9,
        //               width: width / 3.5,
        //               height: height / 2.5,
        //               imagePath: "assets/images/pgc2.png"),
        //         ],
        //       ),
        //       const SizedBox(height: 40),
        //     ],
        //   ),
        // ),
        );
  }
}
