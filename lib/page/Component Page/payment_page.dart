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
              padding: const EdgeInsets.fromLTRB(25, 130, 25, 25),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            MyDropdown(dropdownItems: dropdownItems),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: MyButton(
                buttonText: method,
                width: 160,
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
                }, backgroundColor: null,
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
