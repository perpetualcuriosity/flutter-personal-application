// ignore_for_file: deprecated_member_use, prefer_single_quotes

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
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isSmallScreen = constraints.maxWidth < 800;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Responsive Toggle Buttons
                  Container(
                    width: isSmallScreen ? double.infinity : constraints.maxWidth * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildToggleButton("Home", 0, isSmallScreen),
                        const SizedBox(width: 8),
                        _buildToggleButton("Projects", 1, isSmallScreen),
                        const SizedBox(width: 8),
                        _buildToggleButton("Skills", 2, isSmallScreen),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Expanded Content Box (Ensuring It Covers Maximum Space)
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: isSmallScreen ? const EdgeInsets.all(20) : const EdgeInsets.all(40),
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
            );
          },
        ),
      ),
    );
  }

  // Toggle Button Builder
  Widget _buildToggleButton(String title, int index, bool isSmallScreen) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _changePage(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: _selectedPageIndex == index ? Colors.orangeAccent : Colors.transparent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: _selectedPageIndex == index ? Colors.orangeAccent : Colors.white, width: 2),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: isSmallScreen ? 14 : 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
