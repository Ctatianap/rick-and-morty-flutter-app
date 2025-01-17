import 'package:estrellas_prueba_tec/data/models/character_model.dart';
import 'package:flutter/material.dart';

class CharacterVerticalCard extends StatelessWidget {
  final Character character;

  const CharacterVerticalCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(60, 62, 68, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              character.image,
              height: 250,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  character.name.length > 30
                      ? '${character.name.substring(0, 30)}...'
                      : character.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(178, 223, 40, 1)),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Especie: ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(187, 222, 240, 1)),
                    ),
                    Text(
                      character.species,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 181, 204, 1)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Estado: ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(187, 222, 240, 1)),
                    ),
                    Text(
                      character.status,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 181, 204, 1)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Género: ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(187, 222, 240, 1)),
                    ),
                    Text(
                      character.gender,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 181, 204, 1)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Origen: ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(187, 222, 240, 1)),
                    ),
                    Text(
                      character.origin.name.length > 25
                          ? '${character.origin.name.substring(0, 25)}...'
                          : character.origin.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 181, 204, 1)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Ubicación: ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(187, 222, 240, 1)),
                    ),
                    Text(
                      character.location.name.length > 23
                          ? '${character.location.name.substring(0, 23)}...'
                          : character.location.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 181, 204, 1)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Aparece en ${character.episode.length} episodios',
                  style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(187, 222, 240, 1)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
