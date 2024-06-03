import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/color_consts.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final double i2width;
  final double i2height;
  final String image;
  final String title;
  final String subtitle;
  final String image2;

  const CustomContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.image2,
    required this.i2width,
    required this.i2height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: PurpleCustomColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, width: 64, height: 64, fit: BoxFit.cover),
                SizedBox(height: 16),
                Text(title,
                    style: kMediumParaTextStyle.copyWith(color: Colors.white)),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  style: kSmallParaTextStyle.copyWith(color: Colors.white),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Image.asset(image2, width: i2width, height: i2height),
        ],
      ),
    );
  }
}

class CustomContainer2 extends StatelessWidget {
  final double width;
  final double height;
  final double i2width;
  final double i2height;
  final String image;
  final String title;
  final String subtitle;
  final String image2;

  const CustomContainer2({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.image2,
    required this.i2width,
    required this.i2height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: PurpleCustomColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image, width: 64, height: 64, fit: BoxFit.cover),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style:
                            kMediumParaTextStyle.copyWith(color: Colors.white)),
                    SizedBox(height: 8),
                    Text(subtitle,
                        style:
                            kSmallParaTextStyle.copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Image.asset(image2, width: i2width, height: i2height),
        ],
      ),
    );
  }
}

// Example usage
// CustomContainer(
//   width: 300,
//   height: 300,
//   imageUrl1: 'assets/images/image1.jpg',
//   title: 'Title',
//   subtitle: 'Subtitle',
//   imageUrl2: 'assets/images/image2.jpg',
// ),
