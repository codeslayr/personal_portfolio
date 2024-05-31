import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/core_skill_view_mobile.dart';
import 'package:personal_portfolio/web_screens/core_skill_view_web.dart';

class CoreSkillView extends StatefulWidget {
  const CoreSkillView(
      {super.key,
      required this.toFlutter,
      required this.toFigma,
      required this.toFlutterWeb});

  final Function toFlutter;
  final Function toFigma;
  final Function toFlutterWeb;

  @override
  State<CoreSkillView> createState() => _CoreSkillViewState();
}

class _CoreSkillViewState extends State<CoreSkillView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return CoreSkillViewMobile(
          toFlutter: widget.toFlutter,
          toFigma: widget.toFigma,
          toFlutterWeb: widget.toFlutterWeb,
        );
      } else {
        return Container(
          color: Colors.white,
          child: CoreSkillViewWeb(
            toFlutter: widget.toFlutter,
            toFlutterWeb: widget.toFlutterWeb,
            toFigma: widget.toFigma,
          ),
        );
      }
    });
  }
}
