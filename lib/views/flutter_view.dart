import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/flutter_view_mobile.dart';
import 'package:personal_portfolio/web_screens/flutter_view_web.dart';

class FlutterView extends StatelessWidget {
  const FlutterView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return const FlutterViewMobile();
      } else {
        return Container(
          color: Colors.white,
          child: const FlutterViewWeb(),
        );
      }
    });
  }
}
