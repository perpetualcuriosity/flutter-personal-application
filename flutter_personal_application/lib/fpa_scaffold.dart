import 'package:flutter/material.dart';

class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  Widget wid = Column();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jash Upadhyay'),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Home')),
          TextButton(onPressed: () {}, child: const Text('Education')),
          TextButton(onPressed: () {}, child: const Text('Projects')),
          TextButton(onPressed: () {}, child: const Text('Skills')),
          TextButton(onPressed: () {}, child: const Text('Contact Me')),
        ],
      ),
      body: wid
    );
  }
}
