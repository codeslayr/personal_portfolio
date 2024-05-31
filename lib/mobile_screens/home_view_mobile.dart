import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/color_consts.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({
    super.key,
    required this.toHome,
    required this.toAbout,
    required this.toCoreSkill,
    required this.toProject,
    required this.toTestimonial,
    required this.toFooter,
  });

  final Function toHome;
  final Function toAbout;
  final Function toCoreSkill;
  final Function toProject;
  final Function toFooter;
  final Function toTestimonial;

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: softWhiteCustomColor,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 32.0, right: 32),
            child: Column(
              children: [
                Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: GrayBackgroundCustomColor,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("N M",
                            style: kMainTitleBoldTextStyle.copyWith(
                                fontSize: 28,
                                color: Colors.white.withOpacity(0.8))),
                        // SizedBox(width: 20),
                      ],
                    )),
                Container(
                  height: MediaQuery.of(context).size.height - 180,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "I'm\nNabeel\nMirza.",
                        style: kMainTitleBoldTextStyle.copyWith(
                          fontSize: 60,
                          letterSpacing: -2,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Text(
                        "Flutter Full \nStack Developer",
                        style: kMediumParaTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            letterSpacing: -1,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/down.png",
                      height: 50,
                      width: 50,
                    )),
              ],
            ),
          )),
    );
  }
}
