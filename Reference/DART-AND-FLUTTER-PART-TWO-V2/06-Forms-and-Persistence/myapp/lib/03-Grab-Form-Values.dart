import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create text controllers and use them to retrieve the current values
  // of the TextFields.
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed.
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: firstController,
              decoration: const InputDecoration(
                labelText: 'Enter the first value',
              ),
            ),
            TextField(
              controller: secondController,
              decoration: const InputDecoration(
                labelText: 'Enter the second value',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text fields.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text that the user has entered by using the
                // TextEditingControllers.
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('First value: ${firstController.text}'),
                    const SizedBox(height: 8),
                    Text('Second value: ${secondController.text}'),
                  ],
                ),
              );
            },
          );
        },
        tooltip: 'Show me the values!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
