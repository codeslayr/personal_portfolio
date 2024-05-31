import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/testimonial_card_web.dart';
import 'package:personal_portfolio/constants/color_consts.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class TestimonialWebView extends StatelessWidget {
  const TestimonialWebView({Key? key}) : super(key: key);

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
                  style: kSubHeadingTextStyle.copyWith(color: Colors.white),
                  children: [
                    TextSpan(
                        text: 'My Results',
                        style: kSubHeadingTextStyle.copyWith(
                            color: OrangeCustomColor)),
                  ]),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.",
                style: kSmallParaTextStyle.copyWith(color: Colors.white60),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return TestimonialCardWeb(
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
/* Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus ac
 libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.
  Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero
 ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.  nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies*/