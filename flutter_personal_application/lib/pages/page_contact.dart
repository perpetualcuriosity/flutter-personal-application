import 'package:flutter/material.dart';
import 'package:flutter_personal_application/global_theme/global_theme.dart';
class PageContact extends StatefulWidget
{
    const PageContact({super.key});
    @override
    State<PageContact> createState() => _PageContact();
}
class _PageContact extends State<PageContact>
{
    @override
    Widget build(BuildContext context)
    {
        return Container(decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
            padding: EdgeInsets.all(50.0),
            child: Center(child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [

            ],
        )));
    }
}