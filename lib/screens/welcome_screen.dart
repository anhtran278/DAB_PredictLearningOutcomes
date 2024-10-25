import 'package:flutter/material.dart';
import 'Ques1.dart'; // Import màn hình câu hỏi

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Nội dung chính của màn hình
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Intro.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),

          // Nút cố định, ẩn nhưng vẫn có thể bấm được
          Positioned(
            bottom: 37, // Điều chỉnh vị trí như mong muốn
            right: 30, // Điều chỉnh vị trí như mong muốn
            child: Opacity(
              opacity:
                  0.0, // Nếu muốn thấy nút mờ thì thay đổi thành giá trị thấp hơn
              child: ElevatedButton(
                onPressed: () {
                  // Điều hướng đến màn hình câu hỏi
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ques1()),
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
