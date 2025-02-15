import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_personal_application/widgets/project_card.dart';
import 'package:url_launcher/url_launcher.dart';

class PageProjects extends StatelessWidget {
  PageProjects({super.key});

  final List<Map<String, dynamic>> projects = const [
    {'title': 'Flutter Personal Website', 'description': 'Personal CV Website Using Flutter.', 'icon': Icons.laptop},
    {'title': 'To Be Announced', 'description': 'Coming Soon!!!', 'icon': Icons.settings},
  ];

  final Uri _url1 = Uri.parse('https://github.com/perpetualcuriosity');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Projects',
          style: GoogleFonts.sourceCodePro(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            IconButton(
              onPressed: _launchUrl,
              icon: Image.network(
                'https://img.icons8.com/?size=100&id=u9R54eMKS8fw&format=png&color=ffffff',
                width: 40,
                height: 40,
              ),
            ),
            Text(
              'Click the icon above to view all projects on GitHub',
              style: GoogleFonts.sourceCodePro(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
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