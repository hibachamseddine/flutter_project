import 'package:my_flutter_project/data/datasources/models/articles.model.dart';
import 'package:my_flutter_project/data/datasources/services/article.service.dart';

class ArticleRepository {
  final ArticleService artserv;

  ArticleRepository({required this.artserv});

//Affichage
  Future<List<Article?>?> getArticles() async {
    try {
      final articles = await artserv.getArticles();
      return articles.map((art) => Article.fromJson(art)).toList();
    } catch (error) {
      print("Error : $error");
      return null;
    }
  }
}
