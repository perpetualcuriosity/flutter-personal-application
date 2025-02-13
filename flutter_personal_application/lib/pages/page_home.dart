import 'dart:ui';
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
        Positioned.fill(
          child: Image.asset(
            'lib/assets/cbg.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.55),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.network(
                  'https://img.icons8.com/?size=100&id=u9R54eMKS8fw&format=png&color=000000',
                  width: 50,
                  height: 50,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.network(
                  'https://img.icons8.com/?size=100&id=114445&format=png&color=000000',
                  width: 50,
                  height: 50,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.network(
                  'https://img.icons8.com/?size=100&id=Cjuj2uISMdQ1&format=png&color=000000',
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
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
                          color: col2,
                          fontWeight: FontWeight.bold,
                          fontSize: 100)),
                  TyperAnimatedText('Code.',
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.sourceCodePro(
                          color: col2,
                          fontWeight: FontWeight.bold,
                          fontSize: 100)),
                  TyperAnimatedText('Transform.',
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.sourceCodePro(
                          color: col2,
                          fontWeight: FontWeight.bold,
                          fontSize: 100)),
                  TyperAnimatedText('Flutter Developer',
                      speed: Duration(milliseconds: 50),
                      textStyle: GoogleFonts.sourceCodePro(
                          color: col2,
                          fontWeight: FontWeight.bold,
                          fontSize: 100)),
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