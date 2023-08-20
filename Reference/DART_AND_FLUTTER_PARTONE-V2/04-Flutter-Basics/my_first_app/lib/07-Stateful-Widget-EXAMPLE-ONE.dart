import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isButtonPressed =
      false; // Declare a boolean variable to track if the button has been pressed

  @override
  Widget build(BuildContext context) {
    // Create a Scaffold widget
    return Scaffold(
      // Use GestureDetector to capture user's tap
      body: GestureDetector(
        onTap: () {
          // Toggle the boolean variable when user taps the screen
          if (isButtonPressed) {
            setState(() {
              isButtonPressed = false;
            });
          } else {
            setState(() {
              isButtonPressed = true;
            });
          }
        },
        // Create a Container widget
        child: Container(
          // Change the background color of the container based on the boolean variable
          color: getColor(),
        ),
      ),
    );
  }

  // Define a helper function to return the appropriate color based on the boolean variable
  Color getColor() {
    if (isButtonPressed) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }
}
