import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/page/controller/responsif_controller.dart';
import 'package:kaiecash/page/responsif_page/Tablet/history_gridview.dart';
import 'package:kaiecash/page/responsif_page/mobile/history_list.dart';

class ResposifLayout extends StatelessWidget {
  final ResponsifController responsifController = Get.find();
  ResposifLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (responsifController.isMobile()) {
          return ListHistory();
        } else {
          return GridHistory();
        }
      },
    );
  }
}
