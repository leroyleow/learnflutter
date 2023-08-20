// Import the material library from Flutter
import 'package:flutter/material.dart';

// Define a Todo class with title and description
class Todo {
  final String title;
  final String description;

  // Constructor for the Todo class
  const Todo(this.title, this.description);
}

// Make a quick list of 3 to-do items
List<Todo> todoList = [
  Todo(
    'Todo 1',
    'A description of what needs to be done for Todo 1',
  ),
  Todo(
    'Todo 2',
    'A description of what needs to be done for Todo 2',
  ),
  Todo(
    'Todo 3',
    'A description of what needs to be done for Todo 3',
  ),
];

// Entry point for the application
void main() {
  // Run the MaterialApp widget, which serves as the root widget for the app
  runApp(
    MaterialApp(
      // Set the app title
      title: 'Passing Data',
      // Set the home page to be the TodosScreen widget, and pass in the todoList
      home: TodosScreen(
        todos: todoList,
      ),
    ),
  );
}

// A widget that displays a list of todos
class TodosScreen extends StatelessWidget {
  // Constructor for the TodosScreen widget
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  // List of todos to display
  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    // The Scaffold widget provides a basic layout structure for the app
    return Scaffold(
      // The AppBar widget displays a title at the top of the screen
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      // The body of the screen is a ListView widget, which displays a scrollable list of items
      body: ListView.builder(
        // The number of items in the list is the length of the todos list
        itemCount: todos.length,
        // The itemBuilder function is called for each item in the list
        itemBuilder: (context, index) {
          // Create a ListTile widget for each todo, which displays the title and calls the onTap function when tapped
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              // Navigate to the DetailScreen widget and pass in the selected todo
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// A widget that displays the details of a single todo
class DetailScreen extends StatelessWidget {
  // Constructor for the DetailScreen widget
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  // The todo to display
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // The Scaffold widget provides a basic layout structure for the app
    return Scaffold(
      // The AppBar widget displays the title of the selected todo
      appBar: AppBar(
        title: Text(todo.title),
      ),
      // The body of the screen is a Text widget that displays the description of the selected todo
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}
