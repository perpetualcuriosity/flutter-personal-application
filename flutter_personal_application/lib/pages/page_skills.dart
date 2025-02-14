// ignore_for_file: unused_local_variable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';

class PageSkills extends StatefulWidget {
  const PageSkills({super.key});

  @override
  State<PageSkills> createState() => _PageSkills();
}

class _PageSkills extends State<PageSkills> {
  final StreamController<int> controller = StreamController<int>();

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10), 
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isSmallScreen = constraints.maxWidth < 800;

          return Flex(
            direction: isSmallScreen ? Axis.vertical : Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: isSmallScreen ? 300 : 450, // Adjust Fortune Wheel size
                width: isSmallScreen ? 300 : 450,
                child: FortuneWheel(
                  indicators: [],
                  selected: controller.stream,
                  items: [
                    FortuneItem(
                      child: Image.network(
                        'https://img.icons8.com/?size=100&id=PmGdjRbnOudE&format=png&color=000000',
                        height: 70,
                      ),
                    ),
                    FortuneItem(
                      child: Image.network(
                        'https://img.icons8.com/?size=100&id=YX03OUiHE3rz&format=png&color=000000',
                        height: 70,
                      ),
                    ),
                    FortuneItem(
                      child: Image.network(
                        'https://img.icons8.com/?size=100&id=39853&format=png&color=000000',
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: isSmallScreen ? 0 : 50, height: isSmallScreen ? 30 : 0), // Adjust spacing
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: isSmallScreen ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Skills',
                    style: GoogleFonts.sourceCodePro(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: isSmallScreen ? 35 : 40,
                    ),
                    textAlign: isSmallScreen ? TextAlign.center : TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  _buildSkillText('Flutter', isSmallScreen),
                  _buildSkillText('Python', isSmallScreen),
                  _buildSkillText('JavaScript', isSmallScreen),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSkillText(String skill, bool isSmallScreen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        skill,
        style: GoogleFonts.sourceCodePro(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: isSmallScreen ? 25 : 30,
        ),
        textAlign: isSmallScreen ? TextAlign.center : TextAlign.left,
      ),
    );
  }
}
