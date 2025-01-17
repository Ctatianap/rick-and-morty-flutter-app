import 'package:get/get.dart';
import '../pages/code_validation/code_validation_page.dart';
import '../pages/code_validation/code_validation_binding.dart';
import '../pages/characters/characters_page.dart';
import '../pages/characters/characters_binding.dart';
import '../pages/character_detail/character_detail_page.dart';
import '../pages/character_detail/character_detail_binding.dart';

part './app_routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.codeValidation,
      page: () => CodeValidationPage (),
       binding: CodeValidationBinding()
    ),
    GetPage(
      name: AppRoutes.characters,
      page: () => CharactersPage(),
      binding: CharactersBinding(),
    ),
    GetPage(
      name: AppRoutes.characterDetail,
      page: () => CharacterDetailPage(),
      binding: CharacterDetailBinding(),
    )
  ];
}