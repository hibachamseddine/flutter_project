

import 'package:my_flutter_project/data/repositories/categorie.repository.dart';
import 'package:my_flutter_project/domaine/entities/categorie.entity.dart';

class CategorieUseCase {
  final CategorieRepository _respository;

  CategorieUseCase({required CategorieRepository respository})
      : _respository = respository;

  Future<List<CategorieEntity?>?> fetchCategories() async {
    final result = await _respository.getCategories();

//Affichage
    final data = result.map((element) {
      return CategorieEntity(
        id : element.id ?? "",
        nomcategorie: element.nomcategorie ?? "",
        imagecategorie: element.imagecategorie ?? "",
      );
    }).toList();
    return data;
    }

//Ajout
 Future<CategorieEntity?> addCategorie(String nom, dynamic image) async {
    final result = await _respository.postCategorie(nom, image);

    if (result.isNotEmpty) {
      return CategorieEntity(
        id: result['id'] ?? "",
        nomcategorie: result['nomcategorie'] ?? "",
        imagecategorie: result['imagecategorie'] ?? "",
      );
    }
    return null;
  }

//Suppression
Future<void> deleteCategorie(String id) async {
  try {
    final res =await _respository.deleteCategorie(id);
    print ("UC : $res");
  } catch (e) {
    // Gestion des erreurs, affichage de message d'erreur
    print("Erreur lors de la suppression de la catégorie: $e");
  }
}

//modification
 Future<CategorieEntity?> updateCategorie(String id,String nom, dynamic image) async {
    final result = await _respository.updateCategorie(id,nom, image);

    if (result.isNotEmpty) {
      return CategorieEntity(
        id: result['id'] ?? "",
        nomcategorie: result['nomcategorie'] ?? "",
        imagecategorie: result['imagecategorie'] ?? "",
      );
    }
    return null;
  }

}
