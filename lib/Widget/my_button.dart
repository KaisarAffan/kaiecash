import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  final String image;
  final String text;
  final VoidCallback onTap;
  const MenuButton({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
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
                child: SvgPicture.asset(
                  image,
                  height: 25,
                  width: 25,
                )),
            Text(
              text,
              style: TextStyle(fontSize: 10),
            )
          ],
        ));
  }
}
