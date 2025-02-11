import 'package:flutter/material.dart';
class DesktopView extends StatefulWidget
{
    const DesktopView({super.key});
    @override
    State<DesktopView> createState() => _DesktopView();
}
class _DesktopView extends State<DesktopView>
{
    @override
    Widget build(BuildContext context)
    {
      return(Scaffold(
        appBar: AppBar(
          title: Text('Jash Upadhyay'),
          actions: [
            TextButton(onPressed: () {}, child: Text('Home')),
            TextButton(onPressed: () {}, child: Text('Education')),
            TextButton(onPressed: () {}, child: Text('Skills')),
            TextButton(onPressed: () {}, child: Text('Projects')),
            TextButton(onPressed: () {}, child: Text('Contact')),
          ],
        ),
      ));
    }
}