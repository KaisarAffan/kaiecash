import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/my_button.dart';
import 'package:kaiecash/page/controller/payment_controller.dart';

class PaymentPage extends StatelessWidget {
  final PaymentController paymentController = Get.find();
  final TextEditingController textEditingController = TextEditingController();

  PaymentPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String method =
        Get.arguments['method']; // Get the method from the argument

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
            Visibility(
              visible: paymentController.visibility.value,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Text('Visible Widget'),
              ),
            ),
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
                    } else if (method == "Minta") {
                      paymentController.setMinta(value);
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
}
