// Importing necessary packages and libraries
import 'package:flutter/material.dart'; // Flutter Material package for UI components
import 'package:go_router/go_router.dart'; // go_router package for routing

// Defining a StatelessWidget for an authentication function
class AuthFunc extends StatelessWidget {
  const AuthFunc({
    super.key,
    required this.loggedIn,
    required this.signOut,
  });

  final bool loggedIn; // Indicates if the user is logged in or not
  final void Function() signOut; // Callback function for signing out

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Widget for a styled button that either triggers sign-in or sign-out based on the user's logged-in status
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 8),
          child: ElevatedButton(
              onPressed: () {
                // If the user is not logged in, navigate to the '/sign-in' route; otherwise, trigger sign-out
                !loggedIn ? context.push('/sign-in') : signOut();
              },
              child: !loggedIn ? const Text('RSVP') : const Text('Logout')),
        ),
        Visibility(
          visible:
              loggedIn, // Display the following button only if the user is logged in
          child: Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 8),
            child: ElevatedButton(
                onPressed: () {
                  // Navigate to the '/profile' route
                  context.push('/profile');
                },
                child: const Text('Profile')),
          ),
        )
      ],
    );
  }
}
