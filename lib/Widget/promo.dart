import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/colors.dart';
import 'package:kaiecash/page/menus/home.dart';
import 'package:kaiecash/utils/all_data.dart';

class MyPromo extends StatelessWidget {
  final Map<String, dynamic> promo;
  const MyPromo({
    super.key,
    required this.promo,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/${promo['image']}"),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(promo['judul']),
          )
        ],
      ),
    );
  }
}

class RowPromo extends StatelessWidget {
  final int skipIndex;
  final int lengthIndex;
  const RowPromo(
      {super.key, required this.skipIndex, required this.lengthIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: promo
          .skip(skipIndex)
          .take(lengthIndex)
          .map((singlePromo) => GestureDetector(
              onTap: () {
                var index = promo.indexOf(singlePromo);
                Get.to(HomeMenu());
              },
              child: MyPromo(promo: singlePromo)))
          .toList(),
    );
  }
}

class PromoBener extends StatelessWidget {
  const PromoBener({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/${promo[0]['image']}"))),
        height: 92,
        width: 326,
      ),
    );
  }
}
