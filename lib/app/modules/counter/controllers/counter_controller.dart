import 'package:get/get.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  Rx<int> count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void decrement() => count.value--;
  void reset() => count.value = 0;
}
