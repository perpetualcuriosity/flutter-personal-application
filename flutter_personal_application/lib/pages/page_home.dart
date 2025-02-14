import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';

class PageHome extends StatelessWidget {
  PageHome({super.key});

  final Uri _url1 = Uri.parse('https://github.com/perpetualcuriosity');
  final Uri _url2 = Uri.parse('https://www.linkedin.com/in/jashupadhyay/');

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          right: 10,
          child: Row(children: [
            _buildSocialButton(_url1,
                'https://img.icons8.com/?size=100&id=u9R54eMKS8fw&format=png&color=ffffff'),
            const SizedBox(width: 10),
            _buildSocialButton(_url2,
                'https://img.icons8.com/?size=100&id=114445&format=png&color=ffffff'),
            const SizedBox(width: 10)
          ]),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Jash Upadhyay',
                style: GoogleFonts.sourceCodePro(
                  color: primaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 20),
              AnimatedTextKit(
                animatedTexts: [
                  _typewriterText('Solve.'),
                  _typewriterText('Code.'),
                  _typewriterText('Transform.'),
                  _typewriterText('Flutter Developer'),
                ],
                isRepeatingAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSocialButton(Uri? url, String iconUrl) {
    return IconButton(
      onPressed: url != null ? () => _launchUrl(url) : null,
      icon: Image.network(iconUrl, width: 50, height: 50),
    );
  }

  TypewriterAnimatedText _typewriterText(String text) {
    return TypewriterAnimatedText(
      text,
      speed: const Duration(milliseconds: 150),
      textStyle: GoogleFonts.sourceCodePro(
        color: primaryTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}
