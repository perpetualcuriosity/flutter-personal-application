import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
import 'package:flutter_personal_application/widgets/project_card.dart';
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
            Text(
              'My Projects',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ProjectCard(
                      title: 'Flutter Personal Website',
                      description: 'A voice-controlled personal assistant.',
                      icon:Icons.laptop),
                  ProjectCard(
                      title: 'To Be Announced',
                      description: 'Coming Soon!!!',
                      icon:Icons.settings),
                  ProjectCard(
                      title: 'To Be Announced',
                      description: 'Coming Soon!!!',
                      icon:Icons.settings),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
