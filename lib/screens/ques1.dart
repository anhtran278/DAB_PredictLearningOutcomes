import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package

class Ques1 extends StatelessWidget {
  const Ques1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0), // Adjust the height as needed
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: AppBar(
            elevation: 0, // Remove AppBar shadow
            automaticallyImplyLeading: false, // Remove default back button
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Custom Home SVG Icon (left side)
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/home.svg', // Replace with your custom SVG icon path
                    width: 37, // Adjust size as needed
                    height: 37,
                  ),
                  onPressed: () {
                    // Navigate back to the home screen
                    Navigator.pop(context);
                  },
                ),

                // Navigation Arrows (right side)
                Row(
                  children: [
                    // Left arrow SVG (previous question)
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/leftCricle.svg', // Replace with your custom left arrow SVG
                        width: 32,
                        height: 32,
                      ),
                      onPressed: () {
                        // Add logic to navigate to the previous question
                      },
                    ),

                    // Right arrow SVG (next question)
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/rightCircle.svg', // Replace with your custom right arrow SVG
                        width: 32,
                        height: 32,
                      ),
                      onPressed: () {
                        // Add logic to navigate to the next question
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Content goes here...'),
      ),
    );
  }
}
