import 'package:flutter/material.dart';
import 'package:personal_portfolio/components/testimonials_models.dart';

TextStyle kMainTitleBoldTextStyle = TextStyle(
  fontSize: 90,
  letterSpacing: -7,
  fontFamily: 'Lufga',
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle kSubHeadingTextStyle = TextStyle(
  fontSize: 40,
  letterSpacing: -1,
  fontFamily: 'Lufga',
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle kButtonBigTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'Lufga',
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

TextStyle kSmallParaTextStyle = TextStyle(
  fontSize: 20,
  fontFamily: 'Lufga',
  color: Colors.black,
);
TextStyle kExtraSmallParaTextStyle = TextStyle(
  fontSize: 14,
  fontFamily: 'Lufga',
  color: Colors.black,
);

TextStyle kMediumParaTextStyle = TextStyle(
  fontSize: 32,
  fontFamily: 'Lufga',
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

List<Testimonials> testimonialList = [
  Testimonials(
      name: 'John Doe',
      designation: 'CEO, Company',
      rating: 4.5,
      testimonial:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.'),
  Testimonials(
      name: 'John Doe',
      designation: 'CEO, Company',
      rating: 4.5,
      testimonial:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.'),
  Testimonials(
      name: 'John Doe',
      designation: 'CEO, Company',
      rating: 4.5,
      testimonial:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.'),
  Testimonials(
      name: 'John Doe',
      designation: 'CEO, Company',
      rating: 4.5,
      testimonial:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies. Nullam nec purus ac libero ultricies ultricies.')
];
