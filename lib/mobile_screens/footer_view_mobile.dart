import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/color_consts.dart';
import 'package:personal_portfolio/constants/text_consts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobileView extends StatelessWidget {
  const FooterMobileView({super.key});

  void _sendEmail() async {
    final Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: "ansariabdurrahman614@gmail.com",
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
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      "Let's Connect !",
                      style: kSubHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(150, 50)),
                            maximumSize: MaterialStateProperty.all<Size>(
                                const Size(170, 50)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                OrangeCustomColor),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
                        onPressed: () {
                          _sendEmail();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Contact Me",
                              style: kButtonBigTextStyle.copyWith(
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(Icons.arrow_outward_rounded,
                                size: 15, color: Colors.white)
                          ],
                        )),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ],
                ),
              ),
              const Divider(
                color: Colors.white54,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.08),
                    child: Text(
                      "Crafting elegant Flutter experiences that bring ideas to life, one widget at a time. Let's build something beautiful together. Reach out and let's create magic with code.",
                      style: kSmallParaTextStyle.copyWith(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quick Links",
                            style: kSmallParaTextStyle.copyWith(
                                color: OrangeCustomColor),
                          ),
                          const SizedBox(
                            height: 6,
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
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Core Skills",
                            style: kSmallParaTextStyle.copyWith(
                                color: Colors.white, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text("Projects",
                              style: kSmallParaTextStyle.copyWith(
                                  color: Colors.white, fontSize: 14)),
                          const SizedBox(
                            height: 6,
                          ),
                          Text("Contact",
                              style: kSmallParaTextStyle.copyWith(
                                  color: Colors.white, fontSize: 14)),
                          const SizedBox(
                            height: 6,
                          ),
                          InkWell(
                            onTap: () {
                              String url =
                                  "https://drive.google.com/file/d/1cKCP8J-W7ktVFwunCXPYxs8xGpkcvNu5/view?usp=sharing";
                              launchUrl(Uri.parse(url));
                            },
                            child: Text("Resume",
                                style: kSmallParaTextStyle.copyWith(
                                    color: Colors.white, fontSize: 14)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact",
                              style: kSmallParaTextStyle.copyWith(
                                  color: OrangeCustomColor),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            InkWell(
                              onTap: () {
                                _sendEmail();
                              },
                              child: Text("Email",
                                  style: kSmallParaTextStyle.copyWith(
                                      color: Colors.white, fontSize: 14)),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            InkWell(
                              onTap: () {
                                String url =
                                    "https://www.linkedin.com/in/abdurrahmanansari61/";
                                launchUrl(Uri.parse(url));
                              },
                              child: Text("LinkedIn",
                                  style: kSmallParaTextStyle.copyWith(
                                      color: Colors.white, fontSize: 14)),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            InkWell(
                              onTap: () {
                                String url = "https://github.com/codeslayr";
                                launchUrl(Uri.parse(url));
                              },
                              child: Text("Github",
                                  style: kSmallParaTextStyle.copyWith(
                                      color: Colors.white, fontSize: 14)),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            InkWell(
                              onTap: () {
                                String url =
                                    "https://www.instagram.com/weirdo__61";
                                launchUrl(Uri.parse(url));
                              },
                              child: Text("Instagram",
                                  style: kSmallParaTextStyle.copyWith(
                                      color: Colors.white, fontSize: 14)),
                            ),
                          ]),
                    ],
                  ),
                  // Expanded(
                  //   flex: 1,
                  //   child: Container(),
                  // ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.white54,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "© 2024 Abdurrahman Ansari All Rights Reserved - V 1.0.1",
                    style:
                        kExtraSmallParaTextStyle.copyWith(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
