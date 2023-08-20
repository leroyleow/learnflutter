import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'app',
      home: MyHomePage(),
    );
  }
}

// myhomepage widget
// Scaffold:
// appBar, body: Center(),drawer: Drawer(ListView(ListTile))

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: const Center(child: Text('My HomePage!')),
      drawer: Drawer(
          child: ListView(children: [
        const SizedBox(
            height: 60.0,
            child: const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            )),
        ListTile(
            title: const Text('Item One'),
            onTap: () {
              Navigator.pop(context);
            }),
        ListTile(
            title: const Text('ITEM Two'),
            onTap: () {
              Navigator.pop(context);
            })
      ])),
    );
  }
}
