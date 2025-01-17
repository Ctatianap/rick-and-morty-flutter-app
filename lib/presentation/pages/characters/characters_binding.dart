import 'package:get/get.dart';
import 'characters_controller.dart';
import '../../../data/repositories/characters_repository.dart';
import '../../../data/provider/characters_api.dart';

class CharactersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CharactersApi()); // Primero el API
    Get.put(CharactersRepository()); // Luego el Repository
    Get.lazyPut<CharactersController>(() => CharactersController()); 
  }
}