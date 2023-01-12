import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../second/views/second_view.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.to(() => const SecondView());
        }),
        appBar: AppBar(
          title: const Text('CounterView'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: controller.increment,
                  child: const Text("Increase")),
              const SizedBox(
                width: 20,
              ),
              Text("${controller.count}"),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: controller.decrement,
                  child: const Text("Decrease")),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: controller.reset, child: const Text("reset")),
            ],
          ),
        ),
      );
    });
  }
}
