import 'package:get/get.dart';
import 'package:kaiecash/page/controller/dashboard_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
