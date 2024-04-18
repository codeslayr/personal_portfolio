import 'package:flutter/material.dart';

class AboutViewMobile extends StatelessWidget {
  const AboutViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
        child: Text("About View mobile"),
      ),
    );
  }
}
