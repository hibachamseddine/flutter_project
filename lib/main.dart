import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_flutter_project/approuter.dart';
import 'package:my_flutter_project/data/datasources/localdatasource/user_local_data_source.dart';
import 'package:my_flutter_project/data/datasources/services/article.service.dart';
import 'package:my_flutter_project/data/datasources/services/categorie.service.dart';
import 'package:my_flutter_project/data/repositories/article.repository.dart';
import 'package:my_flutter_project/data/repositories/categorie.repository.dart';
import 'package:my_flutter_project/data/repositories/user.repository.dart';
import 'package:my_flutter_project/domaine/usecases/article.usecase.dart';
import 'package:my_flutter_project/domaine/usecases/categorie.usecase.dart';
import 'package:my_flutter_project/domaine/usecases/user.usecase.dart';
import 'package:my_flutter_project/presentation/controllers/article.controller.dart';
import 'package:my_flutter_project/presentation/controllers/categorie.controller.dart';
import 'package:my_flutter_project/presentation/controllers/user.controller.dart';
import 'package:my_flutter_project/presentation/screens/menu.dart';
import 'package:my_flutter_project/presentation/widgets/myappbar.dart';
import 'package:my_flutter_project/presentation/widgets/mybottomnavigationbar.dart';
import 'package:my_flutter_project/presentation/widgets/mydrawer.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';



void main() async {
 
 //Initialiser shoppingCart
 await PersistentShoppingCart().init();

  // Injection de dépendances

  Get.put(CategorieService());
  Get.put(CategorieRepository(catserv: Get.find()));
  Get.put(CategorieUseCase(respository: Get.find()));
  Get.put(CategorieController(useCase: Get.find()));


  // injection authentification
  Get.put(UserLocalDataSource());
  Get.put(UserRepository(localDataSource: Get.find()));
  Get.put(AuthenticateUserUseCase(repository: Get.find()));
  Get.put(AuthController(userUseCase: Get.find()));

  Get.put(ArticleService());
  Get.put(ArticleRepository(artserv: Get.find()));
  Get.put(ArticleUseCase(respository: Get.find()));
  Get.put(ArticleController(useCase: Get.find()));



  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: appRoutes(),
      home: const Scaffold(
        appBar:  Myappbar(),
        body: Menu(),
        drawer: Mydrawer(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
