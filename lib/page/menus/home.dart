import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/balance_card.dart';
import 'package:kaiecash/Widget/colors.dart';
import 'package:kaiecash/Widget/my_button.dart';
import 'package:kaiecash/Widget/promo.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomePageState();
}

class _HomePageState extends State<HomeMenu> {
  bool _isVisible = false;

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
            BalanceCard(
              rekening: "0821 3727 8751",
              saldo: "Rp.700.000",
              isVisible: _isVisible,
              onToggleVisibility: _toggleVisibility,
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
                      image: 'asset/trima.svg',
                      text: "Top-up",
                    ),
                    MenuButton(
                      image: 'asset/minta.svg',
                      text: "Minta",
                    ),
                    MenuButton(
                      image: 'asset/bayar.svg',
                      text: "Bayar",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MyButton(
              buttonText: "History",
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 92,
              width: 326,
            ),
            SizedBox(height: 20),
            RowPromo(
              lengthIndex: 2,
              skipIndex: 0,
            ),
            SizedBox(
              height: 12,
            ),
            RowPromo(
              lengthIndex: 2,
              skipIndex: 2,
            )
          ],
        ),
      ),
    );
  }
}
