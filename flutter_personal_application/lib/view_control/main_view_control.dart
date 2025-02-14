import 'package:flutter/material.dart';
import 'package:flutter_personal_application/pages/page_home.dart';
import 'package:flutter_personal_application/pages/page_projects.dart';
import 'package:flutter_personal_application/pages/page_skills.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
class MainViewController extends StatefulWidget {
  const MainViewController({super.key});

  @override
  State<MainViewController> createState() => _MainViewController();
}

class _MainViewController extends State<MainViewController> {
  Widget wid1 = PageHome();
  Widget wid2 = PageSkills();
  Widget wid3 = PageProjects();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
            child: Center(
                child: Container(
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
              decoration: BoxDecoration(
                color: Color(0xff020202),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 3),
              ),
              child: wid1,
            ))));
  }
}
