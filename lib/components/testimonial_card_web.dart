import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class TestimonialCardWeb extends StatelessWidget {
  const TestimonialCardWeb(
      {super.key,
      required this.name,
      required this.designation,
      required this.rating,
      required this.testimonial});

  final String name;
  final String designation;
  final double rating;
  final String testimonial;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.4,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage('assets/images/postman.png'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style:
                              kButtonBigTextStyle.copyWith(color: Colors.white),
                        ),
                        Text(
                          designation,
                          style: kSmallParaTextStyle.copyWith(
                              color: Colors.white60),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Image.asset(
                      "assets/images/quote.png",
                      width: 40,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: Colors.yellow, size: 20),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  testimonial,
                  style: kSmallParaTextStyle.copyWith(color: Colors.white60),
                )
              ]))),
    );
  }
}
