import 'package:flutter/material.dart';

class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              OutlinedButton(onPressed: () {}, child: Text('1')),
              OutlinedButton(onPressed: () {}, child: Text('2')),
              OutlinedButton(onPressed: () {}, child: Text('3')),
              OutlinedButton(onPressed: () {}, child: Text('4')),
              OutlinedButton(onPressed: () {}, child: Text('5'))
            ],
          ),
        ),
      ),
      body: Column()
    );
  }
}
