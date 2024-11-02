import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/colors.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double width;
  OutlinedBorder? border;
  IconData? icon;
  MyButton({
    super.key,
    required this.buttonText,
    required this.width,
    required this.onPressed,
    this.border,
    this.icon, required backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          shape: border,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon),
            if (icon != null && buttonText.isNotEmpty) const SizedBox(width: 8),
            if (buttonText.isNotEmpty)
              Text(
                buttonText,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: textColor,
                ),
              ),
          ],
        ),
      ),
    );
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
