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
    final DashboardController dashboardController =
        Get.put(DashboardController());
    final List<Widget> menus = [HomeMenu(), QrisMenu(), ProfileMenu()];

    return Obx(
      () {
        return Scaffold(
          body: menus[dashboardController.selectedIndex.value],
          bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: dashboardController.selectedIndex.value == 0
                        ? textColor
                        : secondaryColor,
                  ),
                  onPressed: () => dashboardController.changeMenu(0),
                ),
                SizedBox(width: 48),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: dashboardController.selectedIndex.value == 2
                        ? textColor
                        : secondaryColor,
                  ),
                  onPressed: () => dashboardController.changeMenu(2),
                ),
              ],
            ),
          ),
          floatingActionButton: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: tresierColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () => dashboardController.changeMenu(1),
              child: Center(
                child: Icon(
                  Icons.qr_code,
                  size: 28,
                  color: textColor,
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
