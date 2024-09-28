import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kaiecash/page/controller/dashboard_controller.dart';
import 'package:kaiecash/page/menus/home.dart';

class QrisMenu extends StatefulWidget {
  const QrisMenu({super.key});

  @override
  State<QrisMenu> createState() => _QrisMenuState();
}

class _QrisMenuState extends State<QrisMenu> {
  final DashboardController dashboardController = Get.find();
  final ImagePicker _picker = ImagePicker();
  File? _image;

  @override
  void initState() {
    super.initState();
    _openCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            dashboardController.selectedIndex.value = 0;
          },
        ),
      ),
      body: Center(
        child: Text("Camera"),
      ),
    );
  }

  Future<void> _openCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        setState(() {
          _image = File(image.path); // Store the image file
        });
        Get.to(HomeMenu());
      }
    } catch (e) {
      print('Error opening camera: $e');
    }
  }
}
