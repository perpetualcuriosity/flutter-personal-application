import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
class PageHome extends StatefulWidget
{
    const PageHome({super.key});
    @override
    State<PageHome> createState() => _PageHome();
}
class _PageHome extends State<PageHome>
{
    @override
    Widget build(BuildContext context)
    {
        return Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors:col)),
        );
    }
}