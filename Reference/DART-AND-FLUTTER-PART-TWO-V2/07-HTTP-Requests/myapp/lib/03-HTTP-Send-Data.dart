import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// This function sends an HTTP POST request to create an album with the given title.
// It returns a Future<Album> which represents the asynchronous operation.
Future<Album> createAlbum(String title) async {
  final response = await http.post(
    Uri.parse(
        'https://jsonplaceholder.typicode.com/albums'), // The API endpoint to create an album
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 201) {
    // If the server returns a 201 CREATED response, parse the JSON response body.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server returns a response other than 201 CREATED, throw an exception.
    throw Exception('Failed to create album.');
  }
}

// This class represents an album object.
class Album {
  final int id;
  final String title;

  const Album({required this.id, required this.title});

  // Factory method to create an Album object from JSON data.
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  Future<Album>? _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
        ),
      ),
    );
  }

  // This method builds a column with a text field and a button.
  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _futureAlbum = createAlbum(_controller
                  .text); // Create an album when the button is pressed.
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  // This method builds a FutureBuilder widget that displays the album title or error message.
  FutureBuilder<Album> buildFutureBuilder() {
    return FutureBuilder<Album>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // Display the album title if data is available.
          return Text(snapshot.data!.title);
        } else if (snapshot.hasError) {
          // Display the error message if an error occurred.
          return Text('${snapshot.error}');
        }

        // Display a progress indicator while waiting for data.
        return const CircularProgressIndicator();
      },
    );
  }
}
