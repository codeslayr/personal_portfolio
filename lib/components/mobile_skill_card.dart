import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/color_consts.dart';

class MobileSkillCard extends StatelessWidget {
  const MobileSkillCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description,
      required this.image});

  final String icon;
  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: PurpleCustomColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 60,
                width: 60,
                child: Image.asset(icon),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lufga'),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 200,
                    child: Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Lufga',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            const SizedBox(height: 20),
            Container(
                height: 150,
                child: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ))
          ],
        ));
  }
}
