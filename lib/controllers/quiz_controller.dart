import 'package:get/get.dart';
import 'package:quiz_app/constants/app_routes.dart';
import 'package:quiz_app/utils/custom_snackbar.dart';

import '../models/question_model.dart';
import '../services/quiz_service.dart';

class QuizController extends GetxController {
  final RxList<QuestionModel> questions = <QuestionModel>[].obs;
  RxInt currentQuestionIndex = 0.obs;
  RxInt score = 0.obs;
  RxBool isLoading = false.obs;
  var selectedOptions = <int?>[].obs;

  final QuizService _quizService;

  QuizController({required QuizService quizService})
      : _quizService = quizService;

  Future<void> fetchQuizQuestions(String topic) async {
    clearOptions();
    isLoading.value = true;
    try {
      List<QuestionModel> fetchedQuestions =
          await _quizService.getQuizQuestions(topic);
      questions.assignAll(fetchedQuestions);
      selectedOptions.assignAll(List.filled(fetchedQuestions.length, null));
    } catch (e) {
      CustomSnackbar.showError('Error', 'Failed to load questions');
    } finally {
      isLoading.value = false;
    }
  }

  void selectOption(int questionIndex, int optionIndex) {
    selectedOptions[questionIndex] = optionIndex;
  }

  void nextQuestion() {
    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
    } else {
      calculateScore();
      Get.toNamed(AppRoutes.getScoreScreen(
          score.value.toString(), questions.length.toString()));
    }
  }

  void calculateScore() {
    int totalScore = 0;
    for (int i = 0; i < questions.length; i++) {
      if (selectedOptions[i] == questions[i].correctAnswerIndex) {
        totalScore++;
      }
    }
    score.value = totalScore;
  }

  void clearOptions() {
    currentQuestionIndex.value = 0;
    selectedOptions.assignAll(
        List.filled(Get.find<QuizController>().questions.length, null));
  }
}
