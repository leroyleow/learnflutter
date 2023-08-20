import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Returning Data Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selection = 'None';

  // Define a function that starts the selection screen
  _startSelectionScreen() async {
    // Navigate to the selection screen and wait for a result
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    // Update the state with the selected option, or 'None' if no option was selected
    setState(() {
      _selection = result ?? 'None';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Returning Data Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selection: $_selection'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startSelectionScreen,
              child: Text('Select an option'),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Return 'Option 1' as the result
                Navigator.pop(context, 'Option 1');
              },
              child: Text('Option 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Return 'Option 2' as the result
                Navigator.pop(context, 'Option 2');
              },
              child: Text('Option 2'),
            ),
          ],
        ),
      ),
    );
  }
}
