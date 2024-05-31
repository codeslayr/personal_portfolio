import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/color_consts.dart';
import 'package:personal_portfolio/constants/text_consts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWebView extends StatelessWidget {
  const FooterWebView({super.key});

  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: "mnabeel1424@gmail.com",
        queryParameters: {'subject': 'Hello from your website!'});

    try {
      await launchUrl(_emailLaunchUri);
    } catch (e) {
      print('Could not launch email: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: GrayBackgroundCustomColor,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text(
                      "Let's Connect!",
                      style: kSubHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all<Size>(Size(150, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                OrangeCustomColor),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
                        onPressed: () {
                          // redirect to mail with my mail
                          _sendEmail();
                        },
                        child: Row(
                          children: [
                            Text(
                              "Contact Me",
                              style: kButtonBigTextStyle.copyWith(
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_outward_rounded,
                                size: 15, color: Colors.white)
                          ],
                        ))
                  ],
                ),
              ),
              Divider(
                color: Colors.white54,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.08),
                      child: Text(
                        "Crafting elegant Flutter experiences that bring ideas to life, one widget at a time. Let's build something beautiful together. Reach out and let's create magic with code.",
                        style: kSmallParaTextStyle.copyWith(
                            color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quick Links",
                                style: kSmallParaTextStyle.copyWith(
                                    color: OrangeCustomColor, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  // toHome();
                                },
                                onHover: (val) {},
                                child: Text(
                                  "About",
                                  style: kSmallParaTextStyle.copyWith(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Core Skills",
                                style: kSmallParaTextStyle.copyWith(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Projects",
                                style: kSmallParaTextStyle.copyWith(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Contact",
                                style: kSmallParaTextStyle.copyWith(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Contact",
                                  style: kSmallParaTextStyle.copyWith(
                                      color: OrangeCustomColor, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    _sendEmail();
                                  },
                                  child: Text("Email",
                                      style: kSmallParaTextStyle.copyWith(
                                          color: Colors.white, fontSize: 14)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    String url =
                                        "https://github.com/drocgoesongit";
                                    launchUrl(Uri.parse(url));
                                  },
                                  child: Text("Github",
                                      style: kSmallParaTextStyle.copyWith(
                                          color: Colors.white, fontSize: 14)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    String url =
                                        "https://www.linkedin.com/in/nabeelmirza7/";
                                    launchUrl(Uri.parse(url));
                                  },
                                  child: Text("LinkedIn",
                                      style: kSmallParaTextStyle.copyWith(
                                          color: Colors.white, fontSize: 14)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    String url =
                                        "https://twitter.com/NabeelM08239730";
                                    launchUrl(Uri.parse(url));
                                  },
                                  child: Text("Twitter",
                                      style: kSmallParaTextStyle.copyWith(
                                          color: Colors.white, fontSize: 14)),
                                ),
                              ])
                        ]),
                  ),

                  // Expanded(
                  //   flex: 1,
                  //   child: Container(),
                  // ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white54,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "© 2024 Nabeel Mirza All Rights Reserved",
                    style:
                        kExtraSmallParaTextStyle.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
