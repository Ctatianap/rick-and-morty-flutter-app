import 'package:get/get.dart';
import 'code_validation_controller.dart';

class CodeValidationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CodeValidationController>(() => CodeValidationController());
  }
}