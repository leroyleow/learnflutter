import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create a list of items to display in the list view
    final items = ['item1', 'item2', 'item3'];

    return MaterialApp(
      title: 'Flutter ListView.builder Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder Example'),
        ),
        body: ListView.builder(
          // Use the itemCount property to specify the number of items in the list
          itemCount: items.length,
          // Use the itemBuilder property to specify how each item should be displayed
          itemBuilder: (context, index) {
            // Get the item at the specified index
            final item = items[index];
            // Return a ListTile widget that displays the item's text
            return ListTile(
              title: Text(item),
              onTap: () {
                // Do something when the list tile is tapped
                print('You just clicked on $item');
              },
            );
          },
        ),
      ),
    );
  }
}
