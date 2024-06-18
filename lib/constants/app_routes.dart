import 'package:get/get.dart';
import 'package:quiz_app/presentation/name_input_screen.dart';

import '../presentation/home_screen.dart';
import '../presentation/quiz_screen.dart';

class AppRoutes {
  static const String nameInputScreen = "/";
  static const String homeScreen = "/home";
  static const String quizScreen = "/quiz";

  static String getNameInputScreen() => nameInputScreen;

  static String getHomeScreen() => homeScreen;
  static String getQuizScreen() => quizScreen;

  static List<GetPage> routes = [
    GetPage(
      name: nameInputScreen,
      page: () => const NameInputScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: quizScreen,
      page: () => QuizScreen(),
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
