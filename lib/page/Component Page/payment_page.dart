import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/my_button.dart';
import 'package:kaiecash/Widget/my_dropdown.dart';
import 'package:kaiecash/page/controller/payment_controller.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final PaymentController paymentController = Get.find();
  final TextEditingController textEditingController = TextEditingController();
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final String method = Get.arguments['method'];
    final List<Map<String, dynamic>> dropdownItems =
        Get.arguments['dropdownItems'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Payment ($method)"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter amount',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            MyDropdown(dropdownItems: dropdownItems),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: MyButton(
                buttonText: method,
                size: Size(320, 40),
                onPressed: () {
                  int? value = int.tryParse(textEditingController.text);
                  if (value != null) {
                    if (method == "Bayar") {
                      paymentController.setBayar(value);
                    } else if (method == "Top-up") {
                      paymentController.setTopUp(value);
                    }
                    Get.back();
                  } else {
                    Get.snackbar("Error", "Please enter a valid number");
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
