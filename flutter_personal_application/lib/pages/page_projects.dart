import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_personal_application/widgets/project_card.dart';

class PageProjects extends StatelessWidget {
  const PageProjects({super.key});

  final List<Map<String, dynamic>> projects = const [
    {'title': 'Flutter Personal Website', 'description': 'Personal CV Website Using Flutter.', 'icon': Icons.laptop},
    {'title': 'To Be Announced', 'description': 'Coming Soon!!!', 'icon': Icons.settings},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('My Projects', style: GoogleFonts.sourceCodePro(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return ProjectCard(
                title: projects[index]['title'],
                description: projects[index]['description'],
                icon: projects[index]['icon'],
              );
            },
          ),
        ),
      ],
    );
  }
}
