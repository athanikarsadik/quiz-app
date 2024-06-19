import 'package:get/get.dart';

class HomeService extends GetxService {
  Future<List<List<String>>> getTopics() async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      return [
        ["Flutter", "1h:20m"],
        ["React Native", "2h:30m"],
        ["Android", "1h:00m"],
        ["Swift", "40m"],
      ];
    } catch (e) {
      // print('Error fetching topics: $e');
      rethrow;
    }
  }
}
