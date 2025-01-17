import 'package:get/get.dart';
import 'package:my_flutter_project/domaine/entities/article.entity.dart';
import 'package:my_flutter_project/domaine/usecases/article.usecase.dart';

class ArticleController extends GetxController {
  final ArticleUseCase _useCase;

  var articlesList = <ArticleEntity>[].obs;
  var isLoading = true.obs;
  

  ArticleController({required ArticleUseCase useCase}) : _useCase = useCase;

//Affichage
  fetchAllArticles() {
    _useCase.fetchArticles().then((data) {
      isLoading.value = false;
      if (data != null) {
        final result = data
            .map(
              (element) => ArticleEntity(
                id: element?.id ?? "",
                designation: element?.designation ?? "",
                prix: element?.prix ?? 0,
                qtestock: element?.qtestock ?? 0,
                imageart: element?.imageart ?? "",
              ),
            )
            .toList();

        articlesList.value = result;
      }
    }).catchError((error) {});
  }
}
