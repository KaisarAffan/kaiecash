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
      height: 240,
      decoration: BoxDecoration(
          color: tresierColor, borderRadius: BorderRadius.circular(18)),
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
                    image: AssetImage("asset/${promo['image']}"))),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              promo['place'],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              promo['destination'],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "\$${promo['price']}/night",
            ),
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
