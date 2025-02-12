import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
import 'package:google_fonts/google_fonts.dart';
class PageHome extends StatefulWidget
{
    const PageHome({super.key});
    @override
    State<PageHome> createState() => _PageHome();
}
class _PageHome extends State<PageHome>
{
    @override
    Widget build(BuildContext context)
    {
        return Container(
          padding: EdgeInsets.all(13.0),
          decoration: BoxDecoration(gradient: LinearGradient(colors:col)),
            child: Center(child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Solve.',speed: Duration(milliseconds: 50),textStyle: GoogleFonts.sourceCodePro(color: col2,fontWeight: FontWeight.bold,fontSize: 100)),
                    TyperAnimatedText('Code.',speed: Duration(milliseconds: 50),textStyle: GoogleFonts.sourceCodePro(color: col2,fontWeight: FontWeight.bold,fontSize: 100)),
                    TyperAnimatedText('Transform.',speed: Duration(milliseconds: 50),textStyle: GoogleFonts.sourceCodePro(color: col2,fontWeight: FontWeight.bold,fontSize: 100)),
                    TyperAnimatedText('Jash Upadhyay, Flutter Developer',speed: Duration(milliseconds: 100),textStyle: GoogleFonts.sourceCodePro(color: col2,fontWeight: FontWeight.bold,fontSize: 100)),

                  ],
                  isRepeatingAnimation: false,
                )
                ],
            ))
        );
    }
}