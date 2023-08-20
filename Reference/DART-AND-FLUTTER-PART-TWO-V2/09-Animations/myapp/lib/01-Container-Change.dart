import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.red, // Set the primary color theme to red
      ),
      home: MyHomePage(), // Set the home page as MyHomePage
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _bigger =
      false; // Variable to track if the box should be bigger or smaller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'), // Set the app bar title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red, // Set the box color to red
              ),
              child: SizedBox(
                width: _bigger
                    ? 100
                    : 500, // Set the width of the box based on the _bigger variable
                height: 100,
              ),
            ),
            SizedBox(
                height:
                    10), // Add a space of 10 pixels between the box and the button
            ElevatedButton(
              onPressed: () => setState(() {
                _bigger =
                    !_bigger; // Toggle the _bigger variable when the button is pressed
              }),
              child:
                  Icon(Icons.crop_free), // Display the icon inside the button
            ),
          ],
        ),
      ),
    );
  }
}
