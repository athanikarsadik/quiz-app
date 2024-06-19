import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_routes.dart';

import '../controllers/home_controller.dart';

class QuizList extends StatelessWidget {
  final homeController = Get.find<HomeController>();

  QuizList({super.key});

  @override
  Widget build(BuildContext context) {
    var tileColors = [
      AppPallete.tileColor0,
      AppPallete.tileColor1,
      AppPallete.tileColor2,
      AppPallete.tileColor3,
    ];

    var random = Random();
    return Obx(() {
      return ListView.builder(
        itemCount: homeController.topics.length,
        itemBuilder: (context, index) {
          var topic = homeController.topics[index];
          var randomColor = tileColors[random.nextInt(tileColors.length)];
          return InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.getQuizScreen(topic[0]));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: randomColor, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(
                  topic[0],
                  style: TextStyle(
                      fontSize: 16,
                      color: AppPallete.primaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  topic[1],
                  style: TextStyle(
                    color: AppPallete.primaryTextColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
