import 'package:get/get.dart';
import '../../../data/models/character_model.dart';

class CharacterDetailController extends GetxController {
  late final Character character;

  @override
  void onInit() {
    super.onInit();
    character = Get.arguments as Character;
  }
}