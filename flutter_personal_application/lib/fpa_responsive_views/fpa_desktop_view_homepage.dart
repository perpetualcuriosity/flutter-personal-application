import 'package:flutter/material.dart';
import 'package:flutter_personal_application/fpa_pages/page_contact.dart';
import 'package:flutter_personal_application/fpa_pages/page_education.dart';
import 'package:flutter_personal_application/fpa_pages/page_home.dart';
import 'package:flutter_personal_application/fpa_pages/page_projects.dart';
import 'package:flutter_personal_application/fpa_pages/page_skills.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});
  @override
  State<DesktopView> createState() => _DesktopView();
}

class _DesktopView extends State<DesktopView> {
  Widget wid = PageHome();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: wid);
  }
}
