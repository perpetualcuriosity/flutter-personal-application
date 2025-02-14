import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHome();
}

class _PageHome extends State<PageHome> {
  final Uri _url1 = Uri.parse('https://github.com/perpetualcuriosity');
  final Uri _url2 = Uri.parse('https://www.linkedin.com/in/jashupadhyay/');
  final Uri _url3 = Uri.parse('https://www.linkedin.com/in/jashupadhyay/');
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          margin: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
          decoration: BoxDecoration(
            color: Color(0xff020202),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 20,
                right: 20,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => _launchUrl(_url1),
                      icon: Image.network(
                        'https://img.icons8.com/?size=100&id=u9R54eMKS8fw&format=png&color=ffffff',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _launchUrl(_url2),
                      icon: Image.network(
                        'https://img.icons8.com/?size=100&id=114445&format=png&color=ffffff',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _launchUrl(_url3),
                      icon: Image.network(
                        'https://img.icons8.com/?size=100&id=EgRndDDLh8kS&format=png&color=000000',
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
                        fontSize: 60,
                      ),
                    ),
                    SizedBox(height: 20),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Solve.',
                            speed: Duration(milliseconds: 150),
                            textStyle: GoogleFonts.sourceCodePro(
                                color: col2,
                                fontWeight: FontWeight.bold,
                                fontSize: 40)),
                        TypewriterAnimatedText('Code.',
                            speed: Duration(milliseconds: 150),
                            textStyle: GoogleFonts.sourceCodePro(
                                color: col2,
                                fontWeight: FontWeight.bold,
                                fontSize: 40)),
                        TypewriterAnimatedText('Transform.',
                            speed: Duration(milliseconds: 150),
                            textStyle: GoogleFonts.sourceCodePro(
                                color: col2,
                                fontWeight: FontWeight.bold,
                                fontSize: 40)),
                        TypewriterAnimatedText('Flutter Developer',
                            speed: Duration(milliseconds: 150),
                            textStyle: GoogleFonts.sourceCodePro(
                                color: col2,
                                fontWeight: FontWeight.bold,
                                fontSize: 40)),
                      ],
                      isRepeatingAnimation: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}