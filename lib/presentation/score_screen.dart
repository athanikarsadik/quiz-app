import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/widgets/score_card_widget.dart';

class ScoreScreen extends StatelessWidget {
  final String score;
  final String outOfScore;
  const ScoreScreen({super.key, required this.score, required this.outOfScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: Center(
        child: ScoreCardWidget(
          outOfScore: outOfScore,
          score: score,
        ),
      ),
    );
  }
}
