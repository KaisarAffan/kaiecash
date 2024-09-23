import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kaiecash/Widget/colors.dart';

class MenuButton extends StatelessWidget {
  final String image;
  final String text;
  const MenuButton({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: tresierColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  image,
                  height: 25,
                  width: 25,
                )),
            Text(text)
          ],
        ));
  }
}
