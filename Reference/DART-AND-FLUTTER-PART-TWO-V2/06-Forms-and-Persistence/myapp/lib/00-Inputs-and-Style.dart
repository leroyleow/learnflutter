// Importing the Material package for the Flutter app to use its widgets
import 'package:flutter/material.dart';

// This is the main entry point of the app
void main() => runApp(const MyApp());

// This is a StatelessWidget which represents the entire app
class MyApp extends StatelessWidget {
  // Constructor for the MyApp widget
  const MyApp({super.key});

  // This is the build method that returns the app UI
  @override
  Widget build(BuildContext context) {
    // Defining a string variable to hold the title of the app
    const appTitle = 'Form Styling Demo';

    // Creating and returning a MaterialApp widget which is the root widget of the app
    return MaterialApp(
      title: appTitle, // Setting the app title
      theme: ThemeData(
        // Defining the theme of the app
        primarySwatch: Colors.teal, // Setting the primary color
        fontFamily: 'Roboto', // Setting the default font
      ),
      home: Scaffold(
        // This widget provides a basic structure for the app UI
        appBar: AppBar(
          // Creating the app bar for the app
          title: const Text(appTitle), // Setting the title of the app bar
          centerTitle: true, // Centering the app bar title
        ),
        body:
            const MyCustomForm(), // Adding the custom form widget as the body of the app
      ),
    );
  }
}

// This is a StatelessWidget which represents the custom form widget of the app
class MyCustomForm extends StatelessWidget {
  // Constructor for the MyCustomForm widget
  const MyCustomForm({super.key});

  // This is the build method that returns the custom form UI
  @override
  Widget build(BuildContext context) {
    // Wrapping the entire form inside a SingleChildScrollView widget to enable scrolling
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24), // Adding padding to the form
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // Setting the cross axis alignment to stretch
        children: <Widget>[
          const SizedBox(height: 16), // Adding a sized box for vertical spacing
          TextField(
            // Creating a text field widget
            style: const TextStyle(
                fontSize: 16), // Setting the font size of the text field
            decoration: InputDecoration(
              // Decorating the text field
              filled:
                  true, // Setting the background color to fill the entire text field
              fillColor: Colors.white, // Setting the background color to white
              border: OutlineInputBorder(
                // Defining the border of the text field
                borderSide: BorderSide.none, // Setting the border side to none
                borderRadius:
                    BorderRadius.circular(8), // Setting the border radius
              ),
              hintText: 'Enter your Last Name', // Setting the hint text
              prefixIcon: Icon(Icons.person,
                  size: 24), // Adding a prefix icon to the text field
            ),
          ),
          const SizedBox(height: 24), // Adding a sized box for vertical spacing
          TextFormField(
            // Creating a form text field widget
            style: const TextStyle(
                fontSize: 16), // Setting the font size of the text field
            decoration: InputDecoration(
              // Decorating the text field
              filled:
                  true, // Setting the background color to fill the entire text field
              fillColor: Colors.white, // Setting the background color to white
              border: OutlineInputBorder(
                // Defining the border of the text field
                borderSide: BorderSide.none, // Setting the border side to none
                borderRadius:
                    BorderRadius.circular(8), // Setting the border radius
              ),
              labelText: 'Enter your username', // Setting the label text
              labelStyle: TextStyle(
                // Setting the label text style
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
