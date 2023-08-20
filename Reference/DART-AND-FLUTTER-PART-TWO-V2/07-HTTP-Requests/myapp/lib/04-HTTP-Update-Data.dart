// Import the necessary Dart libraries.
import 'dart:async';
import 'dart:convert';

// Import the necessary Flutter libraries.
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Function to fetch album data from the API.
Future<Album> fetchAlbum() async {
  // Send a GET request to the specified URL.
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
  );

  // Check if the response has a 200 OK status code.
  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server does not return a 200 OK response, throw an exception.
    throw Exception('Failed to load album');
  }
}

// Function to update album data in the API.
Future<Album> updateAlbum(String title) async {
  // Send a PUT request to the specified URL with the updated title.
  final response = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  // Check if the response has a 200 OK status code.
  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server does not return a 200 OK response, throw an exception.
    throw Exception('Failed to update album.');
  }
}

// Define the Album class with its properties and constructor.
class Album {
  final int id;
  final String title;

  const Album({required this.id, required this.title});

  // Factory constructor to create an Album instance from a JSON object.
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

// The entry point of the application.
void main() {
  runApp(const MyApp());
}

// Define the MyApp StatefulWidget.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

// Define the _MyAppState State class.
class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  late Future<Album> _futureAlbum;

  // Initialize the state of the widget.
  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  // Build the widget tree.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Update Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Update Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<Album>(
            future: _futureAlbum,
            builder: (context, snapshot) {
              // Check if the future is complete.
              if (snapshot.connectionState == ConnectionState.done) {
                // If the future has data, display it.
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(snapshot.data!.title),
                      TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          hintText: 'Enter Title',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _futureAlbum = updateAlbum(_controller.text);
                          });
                        },
                        child: const Text('Update Data'),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  // If the future has an error, display it.
                  return Text('${snapshot.error}');
                }
              }

              // Show a CircularProgressIndicator while the future is being fetched.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
