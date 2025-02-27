import 'package:estrellas_prueba_tec/data/models/location_character_model.dart';

class Character {
    final int id;
    final String name;
    final String status;
    final String species;
    final String? type;
    final String gender;
    final Location origin;
    final Location location;
    final String image;
    final List<String> episode;
    

    Character ({
        required this.id,
        required this.name,
        required this.status,
        required this.species,
        this.type,
        required this.gender,
        required this.origin,
        required this.location,
        required this.image,
        required this.episode,
     
    });

    factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        species: json["species"],
        type: json["type"],
        gender: json["gender"],
        origin: Location.fromJson(json["origin"]),
        location: Location.fromJson(json["location"]),
        image: json["image"],
        episode: List<String>.from(json["episode"].map((x) => x)),
      
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "species": species,
        "type": type,
        "gender": gender,
        "origin": origin.toJson(),
        "location": location.toJson(),
        "image": image,
        "episode": List<dynamic>.from(episode.map((x) => x)),
      
    };
}