import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:api_getx/app/routes/routes.dart';

import '../modules/counter/bindings/counter_binding.dart';
import '../modules/counter/views/counter_view.dart';
import '../modules/post/bindings/post_binding.dart';
import '../modules/post/views/post_view.dart';
import '../modules/second/bindings/second_binding.dart';
import '../modules/second/views/second_view.dart';
import '../modules/user/views/user_view.dart';
import '../modules/user/bindings/user_binding.dart';

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
      case Routes.user:
        return GetPageRoute<dynamic>(
            page: () => UserView(), binding: UserBinding(), settings: settings);
      case Routes.post:
        return GetPageRoute<dynamic>(
            page: () => PostView(), binding: PostBinding(), settings: settings);
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
