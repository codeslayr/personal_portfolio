import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/figma_view_mobile.dart';
import 'package:personal_portfolio/web_screens/figma_view_web.dart';

class FigmaView extends StatelessWidget {
  const FigmaView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return Container();
      } else {
        return Container(
          color: Colors.white,
          child: const FigmaViewWeb(),
        );
      }
    });
  }
}
