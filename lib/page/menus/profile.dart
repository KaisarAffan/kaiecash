import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/acivement_notifier.dart';
import 'package:kaiecash/Widget/colors.dart';
import 'package:kaiecash/Widget/my_button.dart';
import 'package:kaiecash/Widget/profile_heading.dart';
import 'package:kaiecash/utils/route.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({super.key});

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            ProfileHeading(
                profile: 'asset/profile.jpg',
                nama: "Kaisar Affan Danendra",
                email: "kaisar.affan2@gmail.com",
                numberCell: "+62 821 3727 8751"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(),
            ),
            AcivementNotifier(
              heading1: "you are premium Plus+",
              heading2: "enjoy all the benefits",
              icon: FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
            ),
            MyButton(
              buttonText: "our Favourited",
              size: Size(80, 30),
              onPressed: () {
                Get.toNamed(AppRoutes.favouritedPersonListViewPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
