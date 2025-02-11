import 'package:flutter/material.dart';
class PageProjects extends StatefulWidget
{
    const PageProjects({super.key});
    @override
    State<PageProjects> createState() => _PageProjects();
}
class _PageProjects extends State<PageProjects>
{
    @override
    Widget build(BuildContext context)
    {
        return Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellow,Colors.red])),);
    }
}