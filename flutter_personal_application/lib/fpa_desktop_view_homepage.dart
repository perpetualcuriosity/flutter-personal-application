import 'package:flutter/material.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});
  @override
  State<DesktopView> createState() => _DesktopView();
}

class _DesktopView extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    Widget wid = Container();
    return (Scaffold(
        appBar: AppBar(
          title: Text('Jash Upadhyay'),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Home')),
            TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Education')),
            TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Skills')),
            TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Projects')),
            TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Contact')),
          ],
        ),
        body: wid));
  }
}
