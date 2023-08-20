// Importing the material.dart package that contains the Flutter Material Design library.
import 'package:flutter/material.dart';

// The main function that runs the Flutter application.
void main() {
  // A MaterialApp widget that sets up the app's theme and initial route.
  runApp(
    const MaterialApp(
      // A Scaffold widget that provides a basic app layout with a body area.
      home: Scaffold(
        body: Center(
          // An instance of the UserButton widget is placed in the center of the body area.
          child: UserButton(),
        ),
      ),
    ),
  );
}

// Defining a custom button widget named UserButton.
class UserButton extends StatelessWidget {
  // Constructor for the UserButton widget.
  // Required if we will make this button a const in the const MaterialApp call
  // in Line 8 inside the main() call
  const UserButton({super.key});

  // The build() method returns a widget that describes the button's appearance and behavior.
  @override
  Widget build(BuildContext context) {
    // A GestureDetector widget that detects taps on the button and triggers a print statement.
    return GestureDetector(
      // GestureDetector is built into many Flutter widgets!
      onTap: () {
        print('UserButton was tapped!');
      },

      // A Container widget that defines the size, padding, margin, and appearance of the button.
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),

        // decoration acts similar to CSS styling, but for our child object
        decoration: BoxDecoration(
          // button border radius
          borderRadius: BorderRadius.circular(2.0),
          color: Colors.red[600],
        ),

        // A Center widget that centers the button text.
        child: const Center(
          child: Text('Click Here'),
        ),
      ),
    );
  }
}
