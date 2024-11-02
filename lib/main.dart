import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/page/controller/responsif_controller.dart';
import 'package:kaiecash/utils/my_app_page.dart';
import 'package:kaiecash/utils/route.dart';

void main() {
  // Register ResponsifController as a dependency
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ResponsifController responsifController =
      Get.put(ResponsifController());
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final responsifController = Get.find<ResponsifController>();
        responsifController.updateScreenWidth(constraints.maxWidth);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: MyAppPage.pages,
          initialRoute: AppRoutes.dashboad,
        );
      },
    );
  }
}
