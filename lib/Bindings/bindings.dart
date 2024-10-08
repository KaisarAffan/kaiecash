import 'package:get/get.dart';
import 'package:kaiecash/page/controller/dashboard_controller.dart';
import 'package:kaiecash/page/controller/dropdown_controller.dart';
import 'package:kaiecash/page/controller/payment_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => PaymentController());
    Get.lazyPut(() => DropdownController());
  }
}
