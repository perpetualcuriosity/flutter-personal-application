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
  int _selectedPageIndex = 0;

  final List<Widget> _pages = [
    PageHome(),
    const PageProjects(),
    const PageSkills(),
  ];

  void _changePage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: backgroundGradient),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Toggle Buttons for Switching Pages
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildToggleButton("Home", 0),
                  _buildToggleButton("Projects", 1),
                  _buildToggleButton("Skills", 2),
                ],
              ),
              const SizedBox(height: 20),
              // Bordered Rectangle Container
              Container(
                width: 600, // Adjust width as needed
                height: 500, // Adjust height as needed
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: const Color(0xff020202),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: _pages[_selectedPageIndex],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build toggle buttons
  Widget _buildToggleButton(String title, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () => _changePage(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: _selectedPageIndex == index ? Colors.orangeAccent : Colors.white,
          foregroundColor: Colors.black,
        ),
        child: Text(title),
      ),
    );
  }
}
