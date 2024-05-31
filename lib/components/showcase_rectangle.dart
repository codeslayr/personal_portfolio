import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;
  final BoxFit fit;
  final double aspectRatio;

  const CustomImageContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.imagePath,
    this.fit = BoxFit.cover,
    required this.aspectRatio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: fit,
          ),
        ),
      ),
    );
  }
}
