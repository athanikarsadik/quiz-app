import 'package:flutter/widgets.dart';
import 'package:quiz_app/constants/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      color: AppPallete.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        "QUIZ",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppPallete.primaryTextColor),
      ),
    );
  }
}
