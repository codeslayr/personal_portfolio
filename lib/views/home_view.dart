import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/home_view_mobile.dart';
import 'package:personal_portfolio/web_screens/home_view_web.dart';

class HomeView extends StatefulWidget {
  const HomeView({
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
  final Function toTestimonial;
  final Function toFooter;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return HomeViewMobile(
          toHome: widget.toHome,
          toAbout: widget.toAbout,
          toCoreSkill: widget.toCoreSkill,
          toProject: widget.toProject,
          toTestimonial: widget.toTestimonial,
          toFooter: widget.toFooter,
        );
      } else {
        return Container(
            key: const ValueKey("Home"),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/background_photo.png"),
              fit: BoxFit.cover,
            )),
            height: MediaQuery.of(context).size.height,
            child: HomeViewWeb(
              toHome: widget.toHome,
              toAbout: widget.toAbout,
              toService: widget.toCoreSkill,
              toProject: widget.toProject,
              toTestimonial: widget.toTestimonial,
              toFooter: widget.toFooter,
            ));
      }
    });
  }
}
