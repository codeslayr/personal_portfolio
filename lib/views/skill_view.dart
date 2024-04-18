import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/skill_view_mobile.dart';
import 'package:personal_portfolio/web_screens/skill_view_web.dart';

class SkillView extends StatelessWidget {
  const SkillView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return const SkillViewMobile();
      } else {
        return Container(
          color: Colors.white,
          child: const SkillViewWeb(),
        );
      }
    });
  }
}
