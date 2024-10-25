import 'package:flutter/material.dart';
import 'question_1.dart'; // Import the question screen

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content of the screen
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Screen_1.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),

          // Fixed, hidden but clickable button
          Positioned(
            bottom: 37, // Adjust position as needed
            right: 30, // Adjust position as needed
            child: Opacity(
              opacity: 0.0, // Make the button visible
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the QuestionScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => question_1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text('Get Started'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
