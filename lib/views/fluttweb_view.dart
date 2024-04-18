import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/fluttweb_view_mobile.dart';
import 'package:personal_portfolio/web_screens/fluttweb_view_web.dart';

class FluttwebView extends StatelessWidget {
  const FluttwebView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return const FluttWebViewMobile();
      } else {
        return Container(
          color: Colors.white,
          child: const FlutterWebViewWeb(),
        );
      }
    });
  }
}
