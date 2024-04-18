import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/about_view_mobile.dart';
import 'package:personal_portfolio/web_screens/about_view_web.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return const AboutViewMobile();
      } else {
        return Container(
          color: Colors.white,
          child: const AboutViewWeb(),
        );
      }
    });
  }
}
