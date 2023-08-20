// Import the material package, which contains widgets for creating Material-style apps.
// import 'package:flutter/material.dart';

// The main function is the entry point for all Flutter apps.
// Using the MaterialApp for Structure

// void main(){
//   runApp(MaterialApp(
//     home: Text("Some Text")
//   ));
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme:
        ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Title Text'),
      ),
      body: const Center(
        child: Text('Some Text'),
      ),
    ),
  ));
}
