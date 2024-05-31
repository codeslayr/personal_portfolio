import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:personal_portfolio/constants/carousel_contents.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class FlutterViewMobile extends StatelessWidget {
  const FlutterViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Column(
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
                    startPadding: 10.0,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 3 / 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ss_12.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ss_5.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 3 / 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ss_8.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ss_1.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 3 / 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ss_9.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 3 / 2,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ss_2.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 3 / 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/ss_10.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 50, // Fixed height for the Marquee widget
                  child: Marquee(
                    text: 'Flutter Web · Figma . ',
                    style: kSubHeadingTextStyle,
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 16.0,
                    velocity: 100.0,
                    startPadding: 10.0,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 3 / 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ss_11.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ss_4.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 3 / 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ss_7.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 3 / 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ss_6.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/ss_3.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(height: 40),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
