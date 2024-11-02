import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/colors.dart';
import 'package:kaiecash/page/controller/dashboard_controller.dart';
import 'package:kaiecash/page/menus/home.dart';
import 'package:kaiecash/page/menus/profile.dart';
import 'package:kaiecash/page/menus/qris.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.find();
    final List<Widget> menus = [HomeMenu(), QrisMenu(), ProfileMenu()];
    return Obx(
      () {
        return Scaffold(
          body: menus[dashboardController.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardController.selectedIndex.value,
            selectedItemColor: textColor,
            unselectedItemColor: menuColor,
            onTap: dashboardController.changeMenu,
            items: [
              BottomNavigationBarItem(icon: (Icon(Icons.home)), label: "home"),
              BottomNavigationBarItem(
                  icon: (Icon(Icons.qr_code_2)), label: "Qris"),
              BottomNavigationBarItem(
                  icon: (Icon(Icons.person)), label: "Profile"),
            ],
          ),
        );
      },
    );
  }
}
