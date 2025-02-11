import 'package:flutter/material.dart';
class MobileView extends StatefulWidget
{
    const MobileView({super.key});
    @override
    State<MobileView> createState() => _MobileView();
}
class _MobileView extends State<MobileView>
{
    @override
    Widget build(BuildContext context)
    {
      return(Scaffold(
        appBar: AppBar(title: Text('Jash Upadhyay'),actions: [
          IconButton(onPressed: () {
              Scaffold.of(context).openDrawer();
          }, icon: Icon(Icons.list))
        ],),
        drawer: Drawer(
          child: Column(
            children: [
            TextButton(onPressed: () {}, child: Text('Home')),
            TextButton(onPressed: () {}, child: Text('Education')),
            TextButton(onPressed: () {}, child: Text('Skills')),
            TextButton(onPressed: () {}, child: Text('Projects')),
            TextButton(onPressed: () {}, child: Text('Contact')),
            ]
          ),
        ),
      ));
    }
}