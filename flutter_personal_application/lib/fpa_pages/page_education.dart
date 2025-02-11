import 'package:flutter/material.dart';
class PageEducation extends StatefulWidget
{
    const PageEducation({super.key});
    @override
    State<PageEducation> createState() => _PageEducation();
}
class _PageEducation extends State<PageEducation>
{
    @override
    Widget build(BuildContext context)
    {
        return Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.purple,Colors.white])),);
    }
}