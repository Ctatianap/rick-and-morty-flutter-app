import 'package:dio/dio.dart';
import '../models/rick_and_morty_characters_model.dart';
import '../../config/app_config.dart';

class CharactersApi {
  final _dio = Dio();

  Future<RickAndMortyCharacters> getCharacters(int page) async {
    final apiUrl = "${AppConfig.baseUrl}/character/?page=$page";

    try {
      final response = await _dio.get(apiUrl);

      if (response.statusCode == 200) {
        return RickAndMortyCharacters.fromJson(response.data);
      } else {
        throw Exception(
            "No se pudieron cargar los personajes. Status code: ${response.statusCode}");
      }
    } catch (error) {
      throw Exception(
          "Se produjo un error al intentar obtener los personajes: $error");
    }
  }
}
