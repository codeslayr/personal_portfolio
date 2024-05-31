import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile_screens/footer_view_mobile.dart';
import 'package:personal_portfolio/web_screens/footer_web_view.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      if (constraints.maxWidth < 600) {
        return const FooterMobileView();
      } else {
        return Container(
          color: Colors.white,
          child: const FooterWebView(),
        );
      }
    });
  }
}
