import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// This function fetches an album from a remote server using HTTP.
// It returns a Future that resolves to an Album object.
Future<Album> fetchAlbum() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    // Send authorization headers to the backend.
    headers: {
      HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
    },
  );

  // The response from the server is in JSON format.
  // Decode the JSON string to convert it into a Dart object.
  final responseJson = jsonDecode(response.body);

  // Create an Album object from the decoded JSON.
  return Album.fromJson(responseJson);
}

// This class represents an album.
class Album {
  final int userId;
  final int id;
  final String title;

  // This is a constructor for the Album class.
  // The required keyword indicates that the parameters are mandatory.
  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  // This is a factory method that creates an Album object from a JSON map.
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

// FROM THE PREVIOUS LECTURE:
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    // When the app starts, fetch the Album object and assign it to futureAlbum
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            // Wait for the futureAlbum to complete and rebuild the UI accordingly
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // If the futureAlbum completed successfully,
                // display the title of the Album object.
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                // If there was an error while fetching the Album,
                // display the error message.
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
