import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: ListView(
          // Use the children property to create a list of widgets
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Doe'),
              subtitle: Text('johndoe@example.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Do something when the list tile is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Jane Doe'),
              subtitle: Text('janedoe@example.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Do something when the list tile is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Bob Smith'),
              subtitle: Text('bobsmith@example.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Do something when the list tile is tapped
              },
            ),
          ],
        ),
      ),
    );
  }
}
