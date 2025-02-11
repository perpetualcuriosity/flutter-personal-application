import 'package:flutter/material.dart';

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
    return Scaffold();
  }
}
