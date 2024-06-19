import 'package:get/get.dart';
import 'package:quiz_app/controllers/home_controller.dart';
import 'package:quiz_app/controllers/quiz_controller.dart';
import 'package:quiz_app/services/home_service.dart';
import 'package:quiz_app/services/quiz_service.dart';

class DependencyInjection {
  void initDependency() {
    Get.lazyPut(() => HomeService());
    Get.lazyPut(() => HomeController(homeService: Get.find()));
    Get.lazyPut(() => QuizService());
    Get.put(QuizController(quizService: Get.find()), permanent: true);
  }
}
