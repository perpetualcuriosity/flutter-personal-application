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
        body: wid));
  }
}
