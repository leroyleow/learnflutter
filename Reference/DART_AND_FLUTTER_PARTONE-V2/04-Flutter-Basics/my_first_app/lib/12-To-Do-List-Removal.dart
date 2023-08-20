import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initialize a list of to-do items
  List<String> _todos = [
    'Buy milk',
    'Walk the dog',
    'Clean the house',
  ];

  // Function to add a new to-do item
  void _addTodo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newTodo = '';
        // Show a dialog with a text field to add a new to-do item
        return AlertDialog(
          title: Text('Add a new task'),
          content: TextField(
            autofocus: true,
            onChanged: (value) {
              newTodo = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Add'),
              onPressed: () {
                // Add the new to-do item to the list and close the dialog
                setState(() {
                  _todos.add(newTodo);
                });
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
        title: Text('To-Do List'),
      ),
      body: ListView.builder(
        // Use a ListView.builder to display the list of to-do items
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          final todo = _todos[index];
          // Create a ListTile for each to-do item
          return ListTile(
            title: Text(
              todo,
            ),
            onTap: () {
              // Remove the tapped to-do item from the list
              setState(() {
                _todos.removeAt(index);
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }
}
