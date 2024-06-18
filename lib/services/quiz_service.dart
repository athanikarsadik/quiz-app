import 'package:get/get.dart';

import '../models/question_model.dart';

class QuizService extends GetxService {
  Future<List<QuestionModel>> getQuizQuestions(String topic) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      Map<String, List<QuestionModel>> quizData = getData();
      if (quizData.containsKey(topic)) {
        return quizData[topic]!.take(5).toList();
      } else {
        throw Exception('Quiz data not found for topic: $topic');
      }
    } catch (e) {
      // print("Error fetching quiz questions: $e");
      rethrow;
    }
  }

  Map<String, List<QuestionModel>> getData() {
    return {
      "Flutter": [
        QuestionModel(
          question: 'What is Flutter?',
          options: [
            'A programming language',
            'A mobile development framework',
            'A database management system',
            'A cloud platform'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'Which programming language is used by Flutter?',
          options: ['Java', 'Kotlin', 'Swift', 'Dart'],
          correctAnswerIndex: 3,
        ),
        QuestionModel(
          question: 'What is a StatelessWidget in Flutter?',
          options: [
            'A widget that can change its state',
            'A widget that rebuilds every time data changes',
            'A widget that cannot change its state after being built',
            'A widget used for navigation'
          ],
          correctAnswerIndex: 2,
        ),
      ],
      "React Native": [
        QuestionModel(
          question: 'What is React Native?',
          options: [
            'A backend framework',
            'A JavaScript library for building native mobile apps',
            'A markup language for UI design',
            'A testing tool'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'Which company developed React Native?',
          options: ['Google', 'Microsoft', 'Facebook', 'Amazon'],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'What is the purpose of "JSX" in React Native?',
          options: [
            'For styling components',
            'For managing app state',
            'For writing JavaScript code that looks like HTML',
            'For handling navigation'
          ],
          correctAnswerIndex: 2,
        ),
      ],
      "Android": [
        QuestionModel(
          question:
              'What is the programming language primarily used for modern Android development (as of 2023)?',
          options: ['Java', 'Kotlin', 'C++', 'Python'],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is an Activity in Android?',
          options: [
            'A background process',
            'A UI component that represents a single screen',
            'A data storage mechanism',
            'A networking library'
          ],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is the purpose of the Android Manifest file?',
          options: [
            'To define app permissions and components',
            'To store app data',
            'To style the app UI',
            'To write unit tests'
          ],
          correctAnswerIndex: 0,
        ),
      ],
      "Swift": [
        QuestionModel(
          question: 'What is Swift primarily used for?',
          options: [
            'Web development',
            'Game development',
            'iOS, macOS, watchOS, and tvOS app development',
            'Database management'
          ],
          correctAnswerIndex: 2,
        ),
        QuestionModel(
          question: 'Which company created Swift?',
          options: ['Google', 'Apple', 'Microsoft', 'Amazon'],
          correctAnswerIndex: 1,
        ),
        QuestionModel(
          question: 'What is a "struct" in Swift?',
          options: [
            'A class that cannot be inherited',
            'A data type for storing collections of values',
            'A protocol that defines methods',
            'A value type that can store data and methods'
          ],
          correctAnswerIndex: 3,
        ),
      ],
    };
  }
}
