import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/quiz_controller.dart';

import '../constants/app_colors.dart';

class ScoreCardWidget extends StatefulWidget {
  final String score;
  final String outOfScore;
  const ScoreCardWidget(
      {super.key, required this.score, required this.outOfScore});

  @override
  _ScoreCardWidgetState createState() => _ScoreCardWidgetState();
}

class _ScoreCardWidgetState extends State<ScoreCardWidget> {
  bool isScoreAboveFiftyPercent() {
    double percentage =
        (double.parse(widget.score) / double.parse(widget.outOfScore)) * 100;
    return percentage > 50;
  }

  @override
  Widget build(BuildContext context) {
    final isPass = isScoreAboveFiftyPercent();
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          padding:
              EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: AppPallete.whiteColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Text(
                'Your Score is',
                style: TextStyle(
                    fontSize: 16,
                    color: AppPallete.blackColor,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(
                '${widget.score}/${widget.outOfScore}',
                style: TextStyle(
                    fontSize: 20,
                    color: AppPallete.blackColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (isPass) {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  } else {
                    Get.find<QuizController>().clearOptions();
                    Navigator.of(context).pop();
                  }
                },
                child: Text(
                  isPass
                      ? ""
                          'FINISH'
                      : "RETAKE QUIZ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: isPass
                      ? AppPallete.lightGreenColor
                      : AppPallete.errorColor,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 70,
          right: 70,
          top: 0,
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              decoration: BoxDecoration(
                color:
                    isPass ? AppPallete.lightGreenColor : AppPallete.errorColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                isPass
                    ? ""
                        'CONGRATULATIONS!!!'
                    : "LOW SCORE",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
