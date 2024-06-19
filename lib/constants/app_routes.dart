import 'package:get/get.dart';
import 'package:quiz_app/presentation/name_input_screen.dart';
import 'package:quiz_app/presentation/score_screen.dart';

import '../presentation/home_screen.dart';
import '../presentation/quiz_screen.dart';

class AppRoutes {
  static const String nameInputScreen = "/";
  static const String homeScreen = "/home";
  static const String quizScreen = "/quiz";
  static const String scoreScreen = "/score";

  static String getNameInputScreen() => nameInputScreen;
  static String getScoreScreen(String score, String outOfScore) =>
      '$scoreScreen?score=$score&outOfScore=$outOfScore';

  static String getHomeScreen(String name) => '$homeScreen?name=$name';
  static String getQuizScreen(String topic) => '$quizScreen?topic=$topic';

  static List<GetPage> routes = [
    GetPage(
      name: nameInputScreen,
      page: () => NameInputScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: homeScreen,
      page: () {
        var name = Get.parameters['name'];
        return HomeScreen(
          name: name ?? "Dear",
        );
      },
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: quizScreen,
      page: () {
        var topic = Get.parameters['topic'];

        return QuizScreen(
          topic: topic!,
        );
      },
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: scoreScreen,
      page: () {
        var score = Get.parameters['score'];
        var outOfScore = Get.parameters['outOfScore'];
        return ScoreScreen(
          outOfScore: outOfScore!,
          score: score!,
        );
      },
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
