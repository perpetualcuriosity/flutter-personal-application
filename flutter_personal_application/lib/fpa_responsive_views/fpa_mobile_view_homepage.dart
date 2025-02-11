import 'package:flutter/material.dart';
import 'package:flutter_personal_application/fpa_pages/page_contact.dart';
import 'package:flutter_personal_application/fpa_pages/page_education.dart';
import 'package:flutter_personal_application/fpa_pages/page_home.dart';
import 'package:flutter_personal_application/fpa_pages/page_projects.dart';
import 'package:flutter_personal_application/fpa_pages/page_skills.dart';
class MobileView extends StatefulWidget {
  const MobileView({super.key});
  @override
  State<MobileView> createState() => _MobileView();
}

class _MobileView extends State<MobileView> {
  Widget wid = PageHome();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(title: Text('Jash Upadhyay')),
        drawer: Drawer(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.home),
                        SizedBox(width: 8), // Space between icon and text
                        Text('Home'),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageHome();
                    });
                  },
                ),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.school),
                        SizedBox(width: 8),
                        Text('Education'),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageEducation();
                    });
                  },
                ),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star),
                        SizedBox(width: 8),
                        Text('Skills'),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageSkills();
                    });
                  },
                ),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.work),
                        SizedBox(width: 8),
                        Text('Projects'),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageProjects();
                    });
                  },
                ),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.contact_mail),
                        SizedBox(width: 8),
                        Text('Contact'),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageContact();
                    });
                  },
                ),
              ),
            ],
          ),
        )),
        body: wid));
  }
}
