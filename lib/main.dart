import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'presentation/routes/app_pages.dart';
import 'package:estrellas_prueba_tec/presentation/pages/code_validation/code_validation_page.dart';
import 'package:estrellas_prueba_tec/presentation/pages/code_validation/code_validation_binding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CodeValidationPage(),
      initialBinding: CodeValidationBinding(),
      getPages: AppPages.pages,
      defaultTransition: Transition.fadeIn,
    );
  }
}
