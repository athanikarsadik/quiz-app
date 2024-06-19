import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/widgets/app_bar_widget.dart';
import 'package:quiz_app/widgets/topic_list_widget.dart';

import '../widgets/welcome_card_widget.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  const HomeScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const AppBarWidget(),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    WelcomeCard(
                      name: name,
                    ),
                    SizedBox(height: 20),
                    Expanded(child: QuizList()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
