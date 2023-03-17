import 'package:flutter/material.dart';

class RegLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Set the background color to grey
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "regPage");
              },
              child: Text('Register'),
            ),
            SizedBox(height: 16), // Add a SizedBox for spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "loginPage");
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
