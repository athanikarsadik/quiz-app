import 'package:get/get.dart';

class HomeService extends GetxService {
  Future<List<String>> getTopics() async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      return [
        "History",
        "Science",
        "Geography",
        "Literature",
      ];
    } catch (e) {
      // print('Error fetching topics: $e');
      rethrow;
    }
  }
}
