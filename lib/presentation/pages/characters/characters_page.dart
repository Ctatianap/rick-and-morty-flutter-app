import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'characters_controller.dart';
import 'widgets/character_horizontal_card.dart';

class CharactersPage extends GetView<CharactersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/rick-and-morty-title.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar personaje...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(187, 222, 240, 1),
                    width: 2.0,
                  ),
                ),
                hoverColor: Color.fromRGBO(187, 222, 240, 1),
                fillColor:  Color.fromRGBO(187, 222, 240, 0.5),
                filled: true,
              ),
              onChanged: controller.filterCharacters,
            ),
          ),
        ),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (controller.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              controller.errorMessage.value,
              style: TextStyle(color: Colors.red),
            ),
          );
        }
        return Container(
          decoration: BoxDecoration(color: Color.fromRGBO(39, 43, 51, 1)),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: controller.filteredCharacters.length,
                itemBuilder: (context, index) {
                  final character = controller.filteredCharacters[index];
                  return CharacterHorizontalCard(
                    character: character,
                  );
                },
              )),
        );
      }),
    );
  }
}
