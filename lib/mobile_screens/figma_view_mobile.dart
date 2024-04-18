import 'package:flutter/material.dart';

class FigmaViewMobile extends StatelessWidget {
  const FigmaViewMobile({super.key});

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
