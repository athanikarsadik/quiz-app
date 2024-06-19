import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';

class QuizLogo extends StatelessWidget {
  const QuizLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'QUIZ',
          style: TextStyle(
            fontSize: 30,
            color: AppPallete.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppPallete.whiteColor,
          ),
          child: Center(
            child: Container(),
            //  Image.asset(
            //   'assets/question_mark.png', // Replace with your image asset path
            //   height: 60,
            //   width: 60,
            // ),
          ),
        ),
      ],
    );
  }
}
