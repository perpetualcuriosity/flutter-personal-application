// ignore_for_file: unused_element, deprecated_member_use
import 'package:flutter/material.dart';
class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      color: Color(0xff020202),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: Icon(icon, size: 40, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        subtitle: Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        onTap: () {},
      ),
    );
  }
}