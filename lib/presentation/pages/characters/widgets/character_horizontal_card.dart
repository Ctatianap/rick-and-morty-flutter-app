import 'package:estrellas_prueba_tec/data/models/character_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:estrellas_prueba_tec/presentation/routes/app_pages.dart';

class CharacterHorizontalCard extends StatelessWidget {
  final Character character;

  const CharacterHorizontalCard({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.characterDetail, arguments: character);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(60, 62, 68, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                character.image,
                height: 110,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name.length > 22
                    ? '${character.name.substring(0, 22)}...'
                    : character.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '${character.species} - ${character.status}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  character.gender.length > 25 
                    ? '${character.gender.substring(0, 25)}...' 
                    : character.gender,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  character.location.name.length > 25 
                    ? '${character.location.name.substring(0, 25)}...' 
                    : character.location.name,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
