import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';

class PageProjects extends StatefulWidget {
  const PageProjects({super.key});
  @override
  State<PageProjects> createState() => _PageProjects();
}

class _PageProjects extends State<PageProjects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
      child: Container(
        padding: EdgeInsets.all(40),
        margin: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 3,
              style: BorderStyle.solid,
              color: Colors.white,
            )),
            child: Column(
                children: [
                    
                ],
            ),
      ),
    );
  }
}
