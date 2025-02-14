import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';

class PageSkills extends StatefulWidget {
  const PageSkills({super.key});

  @override
  State<PageSkills> createState() => _PageSkillsState();
}

class _PageSkillsState extends State<PageSkills> {
  final StreamController<int> controller = StreamController<int>();

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double wheelSize = screenWidth * 0.75; 

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: SizedBox(
          height: wheelSize,
          width: wheelSize,
          child: FortuneWheel(
            selected: controller.stream,
            indicators: [],
            items: [
              _buildFortuneItem('Flutter', 'https://img.icons8.com/?size=100&id=PmGdjRbnOudE&format=png&color=000000'),
              _buildFortuneItem('Python', 'https://img.icons8.com/?size=100&id=YX03OUiHE3rz&format=png&color=000000'),
              _buildFortuneItem('JavaScript', 'https://img.icons8.com/?size=100&id=39853&format=png&color=000000'),
            ],
          ),
        ),
      ),
    );
  }

  FortuneItem _buildFortuneItem(String text, String imageUrl) {
    return FortuneItem(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 50),
          SizedBox(height: 8),
          Text(
            text,
            style: GoogleFonts.sourceCodePro(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
