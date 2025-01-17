import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';

class CodeValidationController extends GetxController {
  final codeController = TextEditingController();
  final validCode = "1234";

  void validateCode() {
    final typedCode = codeController.text.trim();

    if (typedCode.isEmpty) {
      Get.snackbar(
        "Error", 
        "Por favor escribe algún código",
        backgroundColor: Color.fromRGBO(138, 23, 23, 0.718),
        colorText: Colors.white, 
        borderRadius: 8.0,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(seconds: 3),
        icon: Icon(Icons.error, color: Colors.white),
      );
    } else if (typedCode == validCode) {
      Get.toNamed(AppRoutes.characters);
    } else {
      Get.snackbar(
        "Error", 
        "El código ingresado no es correcto",
        backgroundColor: Color.fromRGBO(138, 84, 84, 0.8),
        colorText: Colors.white, 
        borderRadius: 8.0,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: Duration(seconds: 3),
        icon: Icon(Icons.error, color: Colors.white),
      );
    }
  }

  @override
  void onClose() {
    codeController.dispose();
    super.onClose();
  }
}
