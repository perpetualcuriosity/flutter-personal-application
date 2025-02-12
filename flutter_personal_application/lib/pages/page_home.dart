// ignore_for_file: deprecated_member_use
import 'dart:ui'; // Required for ImageFilter
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});
  @override
  State<PageHome> createState() => _PageHome();
}

class _PageHome extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'lib/assets/cbg.jpg', // Ensure this path is correct
            fit: BoxFit.cover,
          ),
        ),
        // Blur Effect
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
            child: Container(
              color: Colors.black.withOpacity(0.55), // Optional overlay tint
            ),
          ),
        ),
        // Foreground Content
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Jash Upadhyay',
                style: GoogleFonts.sourceCodePro(
                  color: col2,
                  fontWeight: FontWeight.bold,
                  fontSize: 100,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Solve.',
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.sourceCodePro(
                          color: col2, fontWeight: FontWeight.bold, fontSize: 100)),
                  TyperAnimatedText('Code.',
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.sourceCodePro(
                          color: col2, fontWeight: FontWeight.bold, fontSize: 100)),
                  TyperAnimatedText('Transform.',
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.sourceCodePro(
                          color: col2, fontWeight: FontWeight.bold, fontSize: 100)),
                  TyperAnimatedText('Flutter Developer',
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.sourceCodePro(
                          color: col2, fontWeight: FontWeight.bold, fontSize: 100)),
                ],
                isRepeatingAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}