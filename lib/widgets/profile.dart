import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle),
      onPressed: () {
        // Navigate to Profile Screen if you have it, or any other screen
        Navigator.pushNamed(context, '/profile'); // Ensure you have a profile route
      },
    );
  }
}
