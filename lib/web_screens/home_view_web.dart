import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_consts.dart';

class HomeViewWeb extends StatefulWidget {
  const HomeViewWeb({super.key});

  @override
  State<HomeViewWeb> createState() => _HomeViewWebState();
}

class _HomeViewWebState extends State<HomeViewWeb> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 60,
                horizontal: MediaQuery.of(context).size.width / 8),
            child: AppBar(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        child: _buildNavItem('Home', _selectedIndex == 0),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        child: _buildNavItem('About', _selectedIndex == 1),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                        child: _buildNavItem('Service', _selectedIndex == 2),
                      ),
                    ],
                  ),
                  Text(
                    "NM",
                    style: kSmallParaTextStyle.copyWith(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                        child: _buildNavItem('Resume', _selectedIndex == 3),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 4;
                          });
                        },
                        child: _buildNavItem('Project', _selectedIndex == 4),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 5;
                          });
                        },
                        child: _buildNavItem('Contact', _selectedIndex == 5),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          // color: Colors.black,
          child: Stack(
            children: [
              Image.asset(
                "assets/images/hero.png",
                width: double.infinity, // Take full width of the container
                fit: BoxFit.cover, // Cover the entire space
              ),
              Positioned(
                top: 120,
                left: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I'm Nabeel\nMirza.",
                      style: kMainTitleBoldTextStyle.copyWith(fontSize: 140),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Text(
                      "Flutter Full Stack Developer",
                      style: kMediumParaTextStyle.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String text, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(text,
          style:
              kSmallParaTextStyle.copyWith(color: Colors.white, fontSize: 20)),
    );
  }
}
