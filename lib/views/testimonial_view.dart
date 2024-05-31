import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/testimonial_mobile_view.dart';
import 'package:personal_portfolio/web_screens/testimonial_web_view.dart';

class TestimonialView extends StatelessWidget {
  const TestimonialView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return const TestimonialMobileView();
      } else {
        return Container(
          color: Colors.white,
          child: const TestimonialWebView(),
        );
      }
    });
  }
}
