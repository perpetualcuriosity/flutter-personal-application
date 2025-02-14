import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class PageSkills extends StatefulWidget {
  const PageSkills({super.key});

  @override
  State<PageSkills> createState() => _PageSkills();
}

class _PageSkills extends State<PageSkills> {
  StreamController<int> controller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 450,
                width: 450,
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
              SizedBox(width: 70),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Skills',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Python',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'JavaScript',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}