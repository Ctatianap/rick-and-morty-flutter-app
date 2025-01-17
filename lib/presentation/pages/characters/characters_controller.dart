import 'package:get/get.dart';
import '../../../data/repositories/characters_repository.dart';
import '../../../data/models/character_model.dart';

class CharactersController extends GetxController {
  final CharactersRepository _charactersRepository = Get.find<CharactersRepository>();

  var characters = <Character>[].obs;
  var filteredCharacters = <Character>[].obs;
  var isLoading = true.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCharacters();
  }

  void fetchCharacters() async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final result = await _charactersRepository.getCharacters(1);
      characters.value = result.character;
      filteredCharacters.value = result.character;
    } catch (error) {
      errorMessage.value = 'Error al cargar los personajes: $error';
    } finally {
      isLoading.value = false;
    }
  }

  void filterCharacters(String query) {
    if (query.isEmpty) {
      filteredCharacters.value = characters;
    } else {
      filteredCharacters.value = characters
          .where((character) => character.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
