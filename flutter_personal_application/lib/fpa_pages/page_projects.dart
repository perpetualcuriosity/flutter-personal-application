import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
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
        return Container(decoration: BoxDecoration(gradient: LinearGradient(colors: col)),);
    }
}