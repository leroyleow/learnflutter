// Tutorial: Using async, await, and Future objects in Dart and Flutter

// Asynchronous programming is essential for performing time-consuming tasks,
// such as network requests, file I/O, or computationally intensive operations,
// without blocking the main thread of execution. In Dart and Flutter, we use
// async, await, and Future objects to handle asynchronous operations.

// Let's start by understanding what a Future is.

// A Future represents a computation that will complete at some point in the
// future. It can complete with a value (success) or with an error (failure).
// You can think of a Future as a promise that will return a value once the
// computation is done.

// Here's an example of a function that returns a Future:

import 'dart:async';

Future<String> fetchUsername() {
  return Future.delayed(Duration(seconds: 3), () => 'John Doe');
}

// In this example, fetchUsername returns a Future that completes with a
// String value after a delay of 3 seconds. This simulates a network request
// that takes some time to complete.

// To use the value returned by a Future, we can use the `then` method:

void main() {
  fetchUsername().then((username) {
    print('Username: $username');
  });
}

// The `then` method takes a callback function that will be executed once the
// Future completes successfully. In this case, it will print the username
// after 3 seconds.

// If an error occurs, we can catch it using the `catchError` method:

Future<String> fetchUsernameWithError() {
  return Future.error('An error occurred while fetching the username');
}

void main() {
  fetchUsernameWithError().then((username) {
    print('Username: $username');
  }).catchError((error) {
    print('Error: $error');
  });
}

// Now let's see how we can use async and await to make our code more
// readable and easier to understand.

// The `async` keyword is used to mark a function as asynchronous. This means
// that the function can perform asynchronous operations using the `await`
// keyword. An async function always returns a Future.

// Here's an example of an async function:

Future<String> fetchUsernameAsync() async {
  await Future.delayed(Duration(seconds: 3));
  return 'John Doe';
}

// In this example, we use the `await` keyword to wait for the Future returned
// by `Future.delayed` to complete. Once the Future completes, the function
// continues executing and returns the username.

// To call an async function, we can use the `await` keyword inside another
// async function:

Future<void> main() async {
  try {
    String username = await fetchUsernameAsync();
    print('Username: $username');
  } catch (error) {
    print('Error: $error');
  }
}

// In this example, we mark the main function as async and use the `await`
// keyword to wait for the fetchUsernameAsync function to complete. If an error
// occurs, we catch it using a try-catch block.

// Note that we can only use the `await` keyword inside an async function.

// In summary, async, await, and Future objects are essential tools for
// handling asynchronous operations in Dart and Flutter. They allow us to
// perform time-consuming tasks without blocking the main thread of execution,
// resulting in a responsive and smooth user experience.