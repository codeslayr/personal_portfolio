import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/core_skill_view_mobile.dart';
import 'package:personal_portfolio/web_screens/core_skill_view_web.dart';

class CoreSkillView extends StatelessWidget {
  const CoreSkillView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return const CoreSkillViewMobile();
      } else {
        return Container(
          color: Colors.white,
          child: const CoreSkillViewWeb(),
        );
      }
    });
    ;
  }
}
