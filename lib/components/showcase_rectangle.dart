import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;
  final BoxFit fit;

  const CustomImageContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: fit,
        ),
      ),
    );
  }
}
