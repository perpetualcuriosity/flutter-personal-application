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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Toggle Buttons
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(5),
                child: ToggleButtons(
                  borderRadius: BorderRadius.circular(12),
                  borderWidth: 2,
                  selectedBorderColor: Colors.orangeAccent,
                  fillColor: Colors.orangeAccent.withOpacity(0.2),
                  color: Colors.white,
                  selectedColor: Colors.orangeAccent,
                  isSelected: List.generate(3, (index) => _selectedPageIndex == index),
                  onPressed: _changePage,
                  children: const [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text("Home", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text("Projects", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text("Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Expanded Rectangle Box
              Expanded(
                child: Container(
                  width: double.infinity, // Ensures it takes full width
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    color: const Color(0xff020202),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: const Offset(0, 5),
                      )
                    ],
                  ),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _pages[_selectedPageIndex],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
