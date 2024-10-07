import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/utils/all_data.dart';

class PromoDetails extends StatefulWidget {
  const PromoDetails({super.key});

  @override
  State<PromoDetails> createState() => _PromoDetailsState();
}

class _PromoDetailsState extends State<PromoDetails> {
  final int index = Get.arguments['index'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('asset/${promo[index]['image']}')),
              Text(promo[index]['judul']),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(promo[index]['detail']),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  