import 'package:get/get.dart';
import 'package:quiz_app/utils/custom_snackbar.dart';

import '../models/question_model.dart';
import '../services/quiz_service.dart';

class QuizController extends GetxController {
  final RxList<QuestionModel> questions = <QuestionModel>[].obs;
  RxInt currentQuestionIndex = 0.obs;
  RxInt score = 0.obs;
  RxBool isLoading = false.obs;

  final QuizService _quizService;

  QuizController({required QuizService quizService})
      : _quizService = quizService;

  Future<void> fetchQuizQuestions(String topic) async {
    isLoading.value = true;
    try {
      List<QuestionModel> fetchedQuestions =
          await _quizService.getQuizQuestions(topic);
      questions.assignAll(fetchedQuestions);
    } catch (e) {
      CustomSnackbar.showError('Error', 'Failed to load questions');
    } finally {
      isLoading.value = false;
    }
  }
}
