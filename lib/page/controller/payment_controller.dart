import 'package:get/get.dart';
import 'package:kaiecash/page/Component%20Page/payment_page.dart';
import 'package:kaiecash/utils/all_data.dart';

class PaymentController extends GetxController {
  var saldo = 700000.obs;
  late List<Map<String, dynamic>> dropdownItems;

  void setTopUp(int newValue) {
    saldo.value += newValue;
  }

  void setBayar(int newValue) {
    saldo.value -= newValue;
  }

  void goToPayment(String method, int saldo) {
    if (method == "Bayar" || method == "Minta") {
      dropdownItems = dropdownItemsMintaBayar;
    } else if (method == "Top-up") {
      dropdownItems = dropdownItemsTopup;
    }
    Get.to(() => PaymentPage(), arguments: {
      'method': method,
      'dropdownItems': dropdownItems,
    });
  }
}
