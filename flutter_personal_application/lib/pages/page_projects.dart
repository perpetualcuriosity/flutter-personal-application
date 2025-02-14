import 'package:flutter/material.dart';
import 'package:flutter_personal_application/widgets/project_card.dart';
class PageProjects extends StatefulWidget {
  const PageProjects({super.key});
  @override
  State<PageProjects> createState() => _PageProjects();
}

class _PageProjects extends State<PageProjects> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                      description: 'Personal CV Website Using Flutter.',
                      icon:Icons.laptop),
                  ProjectCard(
                      title: 'To Be Announced',
                      description: 'Coming Soon!!!',
                      icon:Icons.settings),
                  ProjectCard(
                      title: 'To Be Announced',
                      description: 'Coming Soon!!!',
                      icon:Icons.settings),
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
        );
  }

}
