import 'package:estrellas_prueba_tec/data/models/character_model.dart';
import 'package:estrellas_prueba_tec/data/models/info_api_model.dart';

class RickAndMortyCharacters {
    final Info info;
    final List<Character> character;

    RickAndMortyCharacters({
        required this.info,
        required this.character,
    });

    factory RickAndMortyCharacters.fromJson(Map<String, dynamic> json) => RickAndMortyCharacters(
        info: Info.fromJson(json["info"]),
        character: List<Character>.from(json["results"].map((x) => Character.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "info": info.toJson(),
        "results": List<dynamic>.from(character.map((x) => x.toJson())),
    };
}

