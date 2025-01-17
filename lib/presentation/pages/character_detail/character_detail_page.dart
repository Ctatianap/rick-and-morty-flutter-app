import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'character_detail_controller.dart';
import 'widgets/character_vertical_card.dart';

class CharacterDetailPage extends GetView<CharacterDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(controller.character.name),
          elevation: 0,
          foregroundColor: Color.fromRGBO(187, 222, 240, 1),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/rick-and-morty-background.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(39, 43, 51, 1),
          ),
          child: Column(
            children: [
              CharacterVerticalCard(
                character: controller.character,
              ),
          ],),
        ));
  }
}
