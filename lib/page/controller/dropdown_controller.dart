import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedValue = ''.obs;

  void setSelectedValue(String? value) {
    if (value != null) {
      selectedValue.value = value;
    }
  }
}
