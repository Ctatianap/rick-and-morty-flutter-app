import 'dart:convert';
import 'package:get/get.dart';
import '../provider/characters_api.dart';
import '../models/rick_and_morty_characters_model.dart';

class CharactersRepository {
  final CharactersApi _charactersApi = Get.find<CharactersApi>();

  Future<RickAndMortyCharacters> getCharacters(int page) async {
    return await _charactersApi.getCharacters(page);
  }
  
}
