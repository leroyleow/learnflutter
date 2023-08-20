import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = ''; // Declare a string variable to store user input

  // Define a function to show the input dialog box
  void _showInputDialog() {
    // Show an alert dialog box that contains a text field for user input
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Create a text editing controller to manage the input field
        TextEditingController controller = TextEditingController();

        return AlertDialog(
          // Set the title of the dialog box
          title: Text('Enter some text'),
          // Add a text field to the dialog box for the user to enter text
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: 'Enter some text'),
          ),
          // Add two buttons to the dialog box
          actions: <Widget>[
            // Add a "Cancel" button that dismisses the dialog box without saving any input
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            // Add a "Save" button that saves the input and closes the dialog box
            TextButton(
              child: Text('Save'),
              onPressed: () {
                // Update the value of _inputText with the text entered by the user
                setState(() {
                  _inputText = controller.text;
                });
                // Close the dialog box
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input Example'),
      ),
      body: Center(
        child: Text(
          // Display the user input if there is any, or a prompt to enter some text if there isn't
          _inputText.isEmpty
              ? 'Tap the button to enter some text'
              : 'You entered: $_inputText',
          style: TextStyle(fontSize: 16),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Add an "Edit" icon button that launches the input dialog box when pressed
        onPressed: _showInputDialog,
        child: Icon(Icons.edit),
      ),
    );
  }
}
