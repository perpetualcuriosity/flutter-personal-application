import 'package:flutter/material.dart';
import 'package:flutter_personal_application/fpa_pages/page_contact.dart';
import 'package:flutter_personal_application/fpa_pages/page_education.dart';
import 'package:flutter_personal_application/fpa_pages/page_home.dart';
import 'package:flutter_personal_application/fpa_pages/page_projects.dart';
import 'package:flutter_personal_application/fpa_pages/page_skills.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
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
        appBar: AppBar(iconTheme:IconThemeData(color: Colors.white),flexibleSpace: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: col)),),title: Text('Jash Upadhyay',style: stl)),
        drawer: Drawer(
          backgroundColor: Color(0xff020202),
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
                        Text('Home',style: stl),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageHome();
                    });
                    Navigator.pop(context);
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
                        Text('Education',style: stl),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageEducation();
                    });
                    Navigator.pop(context);
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
                        Text('Skills',style: stl),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageSkills();
                    });
                    Navigator.pop(context);
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
                        Text('Projects',style: stl),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageProjects();
                    });
                    Navigator.pop(context);
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
                        Text('Contact',style: stl),
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      wid = PageContact();
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        )),
        body: wid));
  }
}
