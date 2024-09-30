import 'package:get/get.dart';
import 'package:kaiecash/Widget/ComponentPage/payment_page.dart';

class PaymentController extends GetxController {
  var saldo = 700000.obs;
  var visibility = false.obs;

  void setTopUp(int newValue) {
    saldo.value += newValue;
  }

  void setBayar(int newValue) {
    saldo.value -= newValue;
    visibility.value = true;
  }

  void setMinta(int newValue) {
    visibility.value = true;
  }

  void goToPayment(String method, int saldo) {
    if (method == "Bayar" || method == "Minta") {
      visibility.value = true;
    } else {
      visibility.value = false;
    }
    Get.to(() => PaymentPage(), arguments: {
      'method': method,
    });
  }
}
