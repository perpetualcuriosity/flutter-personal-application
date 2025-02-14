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

  final List<Map<String, dynamic>> skills = [
    {'name': 'Flutter', 'icon': Icons.code},
    {'name': 'Python', 'icon': Icons.computer},
    {'name': 'JavaScript', 'icon': Icons.web},
  ];

  int selectedSkillIndex = 0;

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  void spinWheel() {
    final int newIndex = (selectedSkillIndex + 1) % skills.length;
    setState(() => selectedSkillIndex = newIndex);
    controller.add(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My Skills', style: GoogleFonts.sourceCodePro(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 20),
        Expanded(child: FortuneWheel(selected: controller.stream, items: skills.map((skill) => FortuneItem(child: Icon(skill['icon'], size: 40, color: Colors.white))).toList())),
      ],
    );
  }
}
