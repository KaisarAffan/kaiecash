import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/balance_card.dart';
import 'package:kaiecash/Widget/colors.dart';
import 'package:kaiecash/Widget/my_button.dart';
import 'package:kaiecash/Widget/promo.dart';
import 'package:kaiecash/page/Component%20Page/promo_details.dart';
import 'package:kaiecash/page/controller/payment_controller.dart';
import 'package:kaiecash/page/menus/logic/saldo.dart';
import 'package:kaiecash/utils/route.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomePageState();
}

class _HomePageState extends State<HomeMenu> {
  bool _isVisible = false;
  final PaymentController paymentController = Get.find();

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 82, 0, 26),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage('asset/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Kaisar Affan Danendra"),
                ],
              ),
            ),
            Obx(
              () => BalanceCard(
                rekening: "0821 3727 8751",
                saldo: formatToCurrency(paymentController.saldo.value),
                isVisible: _isVisible,
                onToggleVisibility: _toggleVisibility,
              ),
            ),
            SizedBox(height: 26),
            Container(
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              width: 326,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MenuButton(
                      text: "Minta",
                      onTap: () {
                        paymentController.goToPayment(
                            "Minta", paymentController.saldo.value);
                      },
                      icons: Icons.arrow_downward,
                    ),
                    MenuButton(
                      text: "Top-up",
                      onTap: () {
                        paymentController.goToPayment(
                            "Top-up", paymentController.saldo.value);
                      },
                      icons: Icons.control_point,
                    ),
                    MenuButton(
                      text: "Bayar",
                      onTap: () {
                        paymentController.goToPayment(
                            "Bayar", paymentController.saldo.value);
                      },
                      icons: Icons.arrow_upward,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            MyButton(
              size: Size(130, 30),
              buttonText: "History",
              onPressed: () {
                Get.toNamed(AppRoutes.historyPage);
              },
            ),
            SizedBox(height: 15),
            PromoBener(
              onTap: () {
                Get.to(() => PromoDetails(), arguments: {
                  'index': 0,
                });
              },
            ),
            SizedBox(height: 20),
            RowPromo(
              lengthIndex: 2,
              skipIndex: 1,
            ),
            SizedBox(height: 12),
            RowPromo(
              lengthIndex: 2,
              skipIndex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
