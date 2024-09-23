import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/colors.dart';
import 'package:kaiecash/Widget/menu_button.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomePageState();
}

class _HomePageState extends State<HomeMenu> {
  List<Widget> myItems = List.generate(
    10,
    (index) => Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          'Item $index',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 45, 0, 0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage('asset/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Kaisar Affan Danendra",
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 100,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
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
          ],
        ),
      ),
    );
  }
}
