import 'package:flutter/material.dart';

// TAKE ADVANTAGE OF THESE ANIMATIONS:
// https://docs.flutter.dev/ui/widgets/animation
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
  bool _visible =
      false; // Variable to track if the box should be visible or hidden

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
            AnimatedOpacity(
              opacity: _visible
                  ? 1.0
                  : 0.0, // Use opacity to control the fade effect
              duration: Duration(
                  milliseconds: 500), // Set the duration of the animation
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.red, // Set the box color to red
                ),
                child: SizedBox(
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ), // Add a space of 10 pixels between the box and the button
            ElevatedButton(
              onPressed: () => setState(() {
                _visible =
                    !_visible; // Toggle the _visible variable when the button is pressed
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
