import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/routes_generator.dart';
import 'app/routes/routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      theme: ThemeData(
        fontFamily: 'SFProText',
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: Routes.index,
      builder: (BuildContext ctx, Widget? child) {
        return Scaffold(
          body: child,
        );
      },
    );
  }
}
