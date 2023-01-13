import 'package:api_getx/app/models/user.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final userList = <User>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<List<User>> fetchUsers() async {
    try {
      var dio = Dio();
      var response =
          await dio.get('https://jsonplaceholder.typicode.com/users');
      for (var user in response.data) {
        userList.add(User.fromJson(user));
      }
    } catch (e) {
      print(e);
    }

    return userList;
  }

  final count = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
