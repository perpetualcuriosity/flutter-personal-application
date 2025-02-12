import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
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
                    TyperAnimatedText('Ideate.',textStyle: TextStyle(color: col2,fontWeight: FontWeight.bold,fontSize: 70,overflow: TextOverflow.clip,fontFamily: 'Agne',)),
                    TyperAnimatedText('Create.',textStyle: TextStyle(color: col2,fontWeight: FontWeight.bold,fontSize: 70,overflow: TextOverflow.clip,fontFamily: 'Agne',)),
                    TyperAnimatedText('Revolutionize.',textStyle: TextStyle(color: col2,fontWeight: FontWeight.bold,fontSize: 70,overflow: TextOverflow.clip,fontFamily: 'Agne',)),

                  ],
                  isRepeatingAnimation: false,
                )
                ],
            ))
        );
    }
}