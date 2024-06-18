import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_strings.dart';

class NameInputScreen extends StatefulWidget {
  const NameInputScreen({super.key});

  @override
  State<NameInputScreen> createState() => _NameInputScreenState();
}

class _NameInputScreenState extends State<NameInputScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void _submitName() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.scaffoldBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppStrings.quiz,
                style: TextStyle(
                  fontSize: 20.0,
                  color: AppPallete.primaryColor,
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: nameController, // Connect to controller
                style: const TextStyle(color: AppPallete.primaryColor),
                decoration: InputDecoration(
                  hintText: AppStrings.enterName,
                  hintStyle: TextStyle(color: AppPallete.secondaryTextColor),
                  fillColor: AppPallete.backgroundColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: _submitName,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppPallete.primaryColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 12.0),
                  textStyle: const TextStyle(fontSize: 18.0),
                ),
                child: const Text('Start Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
