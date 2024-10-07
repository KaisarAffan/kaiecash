import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/colors.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Size size;
  const MyButton({
    super.key,
    required this.buttonText,
    required this.size,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          minimumSize: size,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 12, color: textColor),
        ));
  }
}

class MenuButton extends StatelessWidget {
  final IconData icons;
  final String text;
  final VoidCallback onTap;
  const MenuButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: tresierColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icons)),
            Text(
              text,
              style: TextStyle(fontSize: 10),
            )
          ],
        ));
  }
}
