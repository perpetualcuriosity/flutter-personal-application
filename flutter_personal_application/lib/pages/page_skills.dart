import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class PageSkills extends StatefulWidget {
  const PageSkills({super.key});
  @override
  State<PageSkills> createState() => _PageSkills();
}

class _PageSkills extends State<PageSkills> {
  StreamController<int> controller = StreamController<int>();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 550,
                    width: 550,
                    child: FortuneWheel(
                      selected: controller.stream,
                      items: [
                        FortuneItem(child: Image.network('https://img.icons8.com/?size=100&id=PmGdjRbnOudE&format=png&color=000000')),
                        FortuneItem(child: Image.network('https://img.icons8.com/?size=100&id=YX03OUiHE3rz&format=png&color=000000')),
                        FortuneItem(child: Image.network('https://img.icons8.com/?size=100&id=39853&format=png&color=000000')),
                      ],
                    ),
                  )
                ],
              )),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                      AnimatedTextKit(animatedTexts: [
                          TypewriterAnimatedText('My Skills',speed:Duration(milliseconds: 100),textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50))
                      ]),
                      AnimatedTextKit(animatedTexts: [
                          TypewriterAnimatedText('Flutter',speed:Duration(milliseconds: 100),textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50))
                      ]),
                      AnimatedTextKit(animatedTexts: [
                        TypewriterAnimatedText('Python',speed:Duration(milliseconds: 100),textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50))
                      ]),
                      AnimatedTextKit(animatedTexts: [
                        TypewriterAnimatedText('Javascript',speed:Duration(milliseconds: 100),textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50))
                      ])
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
