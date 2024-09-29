import 'package:flutter/material.dart';
import 'package:kaiecash/Widget/my_button.dart';
import 'package:kaiecash/page/menus/logic/saldo.dart';

class PaymentPage extends StatefulWidget {
  final String method;  // Accept the payment method (e.g., "Top-up", "Bayar", etc.)
  final int saldo;      // Accept the current saldo

  const PaymentPage({super.key, required this.method, required this.saldo});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _visibility = false; // Local visibility control
  final TextEditingController _inputController = TextEditingController();

  void handlePayment() {
    int input = int.tryParse(_inputController.text) ?? 0;
    Payment(widget.method, input); // Call the Payment logic function
    setState(() {
      _visibility = true;  // Update visibility if needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment - ${widget.method}"),  // Show the method in the title
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: _inputController,
                decoration: InputDecoration(
                  labelText: 'Enter Amount',
                  hintText: 'e.g., 50000',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Visibility(
              visible: _visibility, // Show or hide based on this value
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Text('Transaction Complete'),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: MyButton(
                buttonText: widget.method, // The button will say "Bayar", "Top-up", or "Minta"
                size: Size(320, 40),
                onTap: handlePayment,  // Call the payment function on button press
              ),
            )
          ],
        ),
      ),
    );
  }
}
