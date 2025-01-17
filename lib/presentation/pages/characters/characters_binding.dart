import 'package:get/get.dart';
import 'characters_controller.dart';
import '../../../data/repositories/characters_repository.dart';
import '../../../data/provider/characters_api.dart';

class CharactersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CharactersApi()); 
    Get.put(CharactersRepository()); 
    Get.lazyPut<CharactersController>(() => CharactersController()); 
  }
}