import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:api_getx/app/routes/routes.dart';

import '../modules/counter/bindings/counter_binding.dart';
import '../modules/counter/views/counter_view.dart';
import '../modules/second/bindings/second_binding.dart';
import '../modules/second/views/second_view.dart';

mixin RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic>? args;
    try {
      args = settings.arguments as Map<String, dynamic>?;
    } catch (_) {
      args = null;
    }

    switch (settings.name) {
      case Routes.index:
        return GetPageRoute<dynamic>(
          page: () => const CounterView(),
          binding: CounterBinding(),
          settings: settings,
        );
      case Routes.second:
        return GetPageRoute<dynamic>(
            page: () => const SecondView(),
            binding: SecondBinding(),
            settings: settings);
      default:
        return _route404();
    }
  }

  static Route<dynamic> _route404() {
    return MaterialPageRoute<dynamic>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('Page Not Found'),
        ),
      );
    });
  }
}
