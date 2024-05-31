import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/color_consts.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class ImageWithStackedButton extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;

  const ImageWithStackedButton({
    Key? key,
    required this.image,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  color: softWhiteCustomColor),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 40,
                    child: _buildStackedButton(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 32),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(26)),
                  color: softWhiteCustomColor),
              child: Text(
                text,
                style: kSmallParaTextStyle,
              )),
        ],
      ),
    );
  }

  Widget _buildStackedButton() {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: NavyBlueCustomColor,
        ),
        child: Center(
          child: Icon(
            Icons.arrow_outward_outlined,
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
