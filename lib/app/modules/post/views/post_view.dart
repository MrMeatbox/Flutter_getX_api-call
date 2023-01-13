import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/post_controller.dart';

class PostView extends StatelessWidget {
  final PostController postController = Get.put(PostController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: Text("User posts by ID"),
        ),
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var post in postController.postList)
                Container(
                  width: MediaQuery.of(context).size.width,
                  // margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: Text(
                              post.title.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: 'RobotoMono',
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(15),
                            child: Text(
                              post.body.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 15),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }
}
