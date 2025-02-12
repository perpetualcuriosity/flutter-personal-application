import 'package:flutter/material.dart';
import 'package:flutter_personal_application/fpa_pages/page_contact.dart';
import 'package:flutter_personal_application/fpa_pages/page_education.dart';
import 'package:flutter_personal_application/fpa_pages/page_home.dart';
import 'package:flutter_personal_application/fpa_pages/page_projects.dart';
import 'package:flutter_personal_application/fpa_pages/page_skills.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical, // Enables vertical scrolling
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
