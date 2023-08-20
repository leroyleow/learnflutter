import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(home: MyHomePage())); // Main entry point of the application

class MyHomePage extends StatefulWidget {
  // The widget that defines the app's home page
  @override
  _MyHomePageState createState() =>
      _MyHomePageState(); // Returns the state of the home page
}

class _MyHomePageState extends State<MyHomePage> {
  // The state of the home page
  List<String> _todos = [
    // A list of to-do items
    'Buy milk',
    'Walk the dog',
    'Clean the house',
  ];

  void _addTodo() {
    // Displays a dialog to add a new to-do item
    showDialog(
      context: context, // The context of the dialog
      builder: (BuildContext context) {
        // The dialog builder
        String newTodo = ''; // The new to-do item to be added
        return AlertDialog(
          title: Text('Add a new task'), // The dialog title
          content: TextField(
            autofocus: true,
            onChanged: (value) {
              newTodo = value;
            },
          ), // A text field to enter the new to-do item
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'), // The cancel button
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'), // The add button
              onPressed: () {
                setState(() {
                  _todos.add(newTodo); // Adds the new to-do item to the list
                });
                Navigator.of(context).pop(); // Closes the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // The widget builder
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'), // The app bar title
      ),
      body: ListView.builder(
        itemCount: _todos.length, // The number of to-do items in the list
        itemBuilder: (BuildContext context, int index) {
          final todo = _todos[index]; // The current to-do item
          return ListTile(
            title: Text(
              todo,
              style: TextStyle(
                decoration: todo.startsWith('-')
                    ? TextDecoration.lineThrough
                    : TextDecoration
                        .none, // If the item is already checked, strike it through
              ),
            ),
            onTap: () {
              setState(() {
                if (todo.startsWith('-')) {
                  _todos[index] = todo.substring(
                      2); // If the item is already checked, uncheck it
                } else {
                  _todos[index] = '- $todo'; // Otherwise, check it
                }
              });
            },
          ); // A list tile to display the to-do item
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), // The add icon
        onPressed:
            _addTodo, // The callback function to display the dialog to add a new to-do item
      ),
    );
  }
}
