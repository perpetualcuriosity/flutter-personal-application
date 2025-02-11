import 'package:flutter/material.dart';
class PageSkills extends StatefulWidget
{
    const PageSkills({super.key});
    @override
    State<PageSkills> createState() => _PageSkills();
}
class _PageSkills extends State<PageSkills>
{
    @override
    Widget build(BuildContext context)
    {
        return Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.brown,Colors.grey])),);
    }
}