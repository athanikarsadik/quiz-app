import 'package:get/get.dart';
import 'package:quiz_app/services/home_service.dart';
import 'package:quiz_app/utils/custom_snackbar.dart';

class HomeController extends GetxController {
  RxList<List<String>> topics = <List<String>>[].obs;

  final HomeService _homeService;

  HomeController({required HomeService homeService})
      : _homeService = homeService;

  @override
  void onInit() async {
    try {
      topics.value = await _homeService.getTopics();
    } catch (e) {
      CustomSnackbar.showError(
          "Error", "Something went wrong, please try again!");
    }
    super.onInit();
  }
}
