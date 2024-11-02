import 'package:get/get.dart';
import 'package:kaiecash/page/controller/favourite_person_controller.dart';
import 'package:kaiecash/utils/all_data.dart';
import 'package:kaiecash/utils/route.dart';

class PaymentController extends GetxController {
  var saldo = 700000.obs;
  late List<Map<String, dynamic>> dropdownItems;
  final FavouritePersonController favouritePersonController = Get.find();

  void setTopUp(int newValue) {
    saldo.value += newValue;
  }

  void setBayar(int newValue) {
    saldo.value -= newValue;
  }

  void goToPayment(String method, int saldo) {
    if (method == "Bayar" || method == "Minta") {
      dropdownItems = favouritePersonController.persons.map((person) {
        return {
          'value': person.name,
          'initial': person.initial,
        };
      }).toList();
    } else if (method == "Top-up") {
      dropdownItems = dropdownItemsTopup;
    }
    Get.toNamed(AppRoutes.paymentPage, arguments: {
      'method': method,
      'dropdownItems': dropdownItems,
    });
  }
}
