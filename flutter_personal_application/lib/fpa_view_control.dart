import 'package:flutter/material.dart';
import 'package:flutter_personal_application/fpa_responsive_views/fpa_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var stl = TextStyle(color: Colors.black,fontWeight: FontWeight.bold);
  var dec = BoxDecoration(gradient: LinearGradient(colors: []));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context,constraints)
        {
          if(constraints.maxWidth>715){
              return DesktopView();
          }
          else
          {
              return DesktopView();
          }
        }
      ),
    );
  }
}
