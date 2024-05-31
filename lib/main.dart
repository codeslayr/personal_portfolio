import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/firebase_options.dart';
import 'package:personal_portfolio/views/core_skill_view.dart';
import 'package:personal_portfolio/views/figma_view.dart';
import 'package:personal_portfolio/views/flutter_view.dart';
import 'package:personal_portfolio/views/fluttweb_view.dart';
import 'package:personal_portfolio/views/footer_view.dart';
import 'package:personal_portfolio/views/home_view.dart';
import 'package:personal_portfolio/views/about_view.dart';
import 'package:personal_portfolio/views/skill_view.dart';
import 'package:personal_portfolio/views/testimonial_view.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialization =
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const MyHomePage();
          }
          if (snapshot.hasError) {
            return const Scaffold(
              body: Center(
                child: Text("Error"),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ItemScrollController _scrollController = ItemScrollController();
  final scrollController = ScrollController();

  void toHome() {
    setState(() {
      _scrollController.scrollTo(
          index: 0, duration: const Duration(milliseconds: 500));
    });
  }

  void toAbout() {
    setState(() {
      _scrollController.scrollTo(
          index: 1, duration: const Duration(milliseconds: 500));
    });
  }

  void toCoreSkill() {
    setState(() {
      _scrollController.scrollTo(
          index: 2, duration: const Duration(milliseconds: 500));
    });
  }

  void toProject() {
    setState(() {
      _scrollController.scrollTo(
          index: 4, duration: const Duration(milliseconds: 500));
    });
  }

  void toTestimonial() {
    setState(() {
      _scrollController.scrollTo(
          index: 7, duration: const Duration(milliseconds: 500));
    });
  }

  void toFlutter() {
    setState(() {
      _scrollController.scrollTo(
          index: 4, duration: const Duration(milliseconds: 500));
    });
  }

  void toFigma() {
    setState(() {
      _scrollController.scrollTo(
          index: 4, duration: const Duration(milliseconds: 500));
    });
  }

  void toFlutterWeb() {
    setState(() {
      _scrollController.scrollTo(
          index: 4, duration: const Duration(milliseconds: 500));
    });
  }

  void toFooter() {
    setState(() {
      _scrollController.scrollTo(
          index: 8, duration: const Duration(milliseconds: 500));
    });
  }

  final List<Widget> _myList = [
    const AboutView(),
    const AboutView(),
    const AboutView(),
    const SkillView(),
    const FlutterView(),
    const FooterView(),
  ];

  // const FigmaView(),
  // const FluttwebView(),

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemScrollController: _scrollController,
      itemCount: _myList.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return HomeView(
            toHome: toHome,
            toAbout: toAbout,
            toCoreSkill: toCoreSkill,
            toProject: toProject,
            toTestimonial: toTestimonial,
            toFooter: toFooter,
          );
          // return AboutView();
        } else if (index == 2) {
          return CoreSkillView(
              toFlutter: toFlutter,
              toFigma: toFigma,
              toFlutterWeb: toFlutterWeb);
        } else {
          return _myList[index];
        }
      },
    );
  }
}
