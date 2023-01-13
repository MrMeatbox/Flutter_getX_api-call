import 'package:dio/dio.dart';
import 'package:api_getx/app/models/user.dart';
import 'package:get/get.dart';
import 'package:api_getx/app/models/post.dart';

class PostController extends GetxController {
  User singleUser = Get.arguments;
  late int userId = singleUser.id!;
  late RxString username = singleUser.name!.obs;
  static PostController get to => Get.find();

  final postList = <Posts>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  Future<List<Posts>> fetchPosts() async {
    try {
      var dio = Dio();
      var response = await dio
          .get('https://jsonplaceholder.typicode.com/posts?userId=$userId');

      for (var post in response.data) {
        postList.add(Posts.fromJson(post));
      }
      postList.sort((a, b) => a.title!.length.compareTo(b.title!.length));
    } catch (e) {
      print(e);
    }

    return postList;
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
