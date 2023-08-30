import 'package:flutter/material.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_expandflexible.dart';
import 'package:flutter_widgets/layoutwidgets/w_ly_fracitonalsizedbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WLyFractionallySizeBoxPage(), //WMediaQueryPage(),
    );
  }
}
