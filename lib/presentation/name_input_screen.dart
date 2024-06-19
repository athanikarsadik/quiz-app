import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';

import '../widgets/quiz_logo_widget.dart';
import '../widgets/user_input_form_widget.dart';

class NameInputScreen extends StatelessWidget {
  const NameInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QuizLogo(),
              SizedBox(height: 50),
              UserInputForm(),
            ],
          ),
        ),
      ),
    );
  }
}
