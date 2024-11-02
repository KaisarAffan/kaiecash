import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/page/controller/dropdown_controller.dart';

class MyDropdown extends StatelessWidget {
  final List<Map<String, dynamic>> dropdownItems;
  const MyDropdown({super.key, required this.dropdownItems});

  @override
  Widget build(BuildContext context) {
    final DropdownController dropdownController = Get.put(DropdownController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Obx(() {
            return DropdownButton<String>(
              value: dropdownController.selectedValue.value.isEmpty
                  ? null
                  : dropdownController.selectedValue.value,
              hint: const Text("Select an option"),
              isExpanded: true,
              underline: SizedBox.shrink(), // Removing the underline
              items: dropdownItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item['value'],
                  child: Row(
                    children: [
                      if (item.containsKey('icon')) Icon(item['icon']),
                      if (item.containsKey('initial'))
                        CircleAvatar(
                          radius: 12,
                          child: Text(
                            item['initial'],
                            style: const TextStyle(fontSize: 11),
                          ),
                        ),
                      const SizedBox(width: 10),
                      Text(item['value']),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                dropdownController.setSelectedValue(newValue);
              },
            );
          }),
        ),
      ),
    );
  }
}
