import 'package:flutter/material.dart';
import 'package:flutter_personal_application/pages/page_contact.dart';
import 'package:flutter_personal_application/pages/page_education.dart';
import 'package:flutter_personal_application/pages/page_home.dart';
import 'package:flutter_personal_application/pages/page_projects.dart';
import 'package:flutter_personal_application/pages/page_skills.dart';

class MainViewController extends StatefulWidget {
  const MainViewController({super.key});

  @override
  State<MainViewController> createState() => _MainViewController();
}

class _MainViewController extends State<MainViewController> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal, 
        children: const [
          PageHome(),
          PageEducation(),
          PageSkills(),
          PageProjects(),
          PageContact(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
