import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/testimonial_card_mobile.dart';
import 'package:personal_portfolio/components/testimonial_card_web.dart';
import 'package:personal_portfolio/constants/color_consts.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class TestimonialMobileView extends StatelessWidget {
  const TestimonialMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage('assets/images/testi_bg.png'),
                fit: BoxFit.cover)),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Testimonials That\n Speak to ',
                  style: kSubHeadingTextStyle.copyWith(
                      color: Colors.white, fontSize: 40),
                  children: [
                    TextSpan(
                        text: 'My Results',
                        style: kSubHeadingTextStyle.copyWith(
                            color: OrangeCustomColor, fontSize: 40)),
                  ]),
            ),
            SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.",
                style: kSmallParaTextStyle.copyWith(
                    color: Colors.white60, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 36),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return TestimonialCardMobile(
                      name: testimonialList[index].name,
                      designation: testimonialList[index].designation,
                      rating: testimonialList[index].rating,
                      testimonial: testimonialList[index].testimonial,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
