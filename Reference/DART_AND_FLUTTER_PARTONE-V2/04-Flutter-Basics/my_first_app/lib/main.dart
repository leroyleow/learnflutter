import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // INITIAL VARIABLE (empty list)
  List<String> _todos = ['task 1', 'task2', 'task3', 'task4'];

  // Dialog Box Pop-up
  // Text input --> add to the _todos
  void _addTodo() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          String newTodo = '';

          return AlertDialog(
            title: Text('Enter New Task Below:'),
            content: TextField(onChanged: (value) {
              newTodo = value;
            }),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _todos.add(newTodo);
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Submit'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To Do List')),
      body: ListView.builder(
          itemCount: _todos.length,
          itemBuilder: (context, index) {
            final todo = _todos[index];

            return ListTile(
                title: Text(todo,
                    style: TextStyle(
                        decoration: todo.startsWith('-')
                            ? TextDecoration.lineThrough
                            : TextDecoration.none)),
                onTap: () {
                  setState(
                    () {
                      if (todo.startsWith('-')) {
                        _todos[index] = todo.substring(2);
                      } else {
                        _todos[index] = '- $todo';
                      }
                    },
                  );
                });
          }),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: _addTodo),
    );
  }
}
