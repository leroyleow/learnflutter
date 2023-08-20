// Import the Material package, which provides Flutter widgets
// implementing Material Design.
import 'package:flutter/material.dart';

// The main() function calls runApp(), passing in a new instance
// of the MyApp widget.
void main() => runApp(const MyApp());

// MyApp is a StatelessWidget that returns a MaterialApp widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Return a MaterialApp widget, which is a predefined
    // Material app widget that sets up the app's title
    // and home widget, in this case a custom form widget.
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// MyCustomForm is a StatefulWidget that returns a Scaffold widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// _MyCustomFormState is a State class that manages the state
// of the MyCustomForm widget.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller to retrieve the current value
  // of the second text field.
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes in the second text field.
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  // A callback function that prints the current value of the second text field.
  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    // Return a Scaffold widget, which provides the app's basic
    // visual structure.
    return Scaffold(
      // Set the title of the app bar.
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      // Set the body of the scaffold to a padding widget with
      // two text fields wrapped in a column widget.
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // The first text field has an onChanged callback that
            // prints the current value of the text field to the console.
            TextField(
              onChanged: (text) {
                print('First text field: $text');
              },
            ),
            // The second text field uses the text controller to
            // retrieve the current value of the text field.
            TextField(
              controller: myController,
            ),
          ],
        ),
      ),
    );
  }
}
