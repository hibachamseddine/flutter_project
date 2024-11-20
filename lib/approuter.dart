
// Définition d'une fonction qui retourne les routes
import 'package:flutter/material.dart';
import 'package:my_flutter_project/data/datasources/models/Product.class.dart';
import 'package:my_flutter_project/domaine/entities/categorie.entity.dart';
import 'package:my_flutter_project/presentation/screens/addcategorie.screen.dart';
import 'package:my_flutter_project/presentation/screens/articleslist.screen.dart';
import 'package:my_flutter_project/presentation/screens/cartview.screen.dart';
import 'package:my_flutter_project/presentation/screens/categorieslist.screen.dart';
import 'package:my_flutter_project/presentation/screens/contactscreen.dart';
import 'package:my_flutter_project/presentation/screens/details.dart';
import 'package:my_flutter_project/presentation/screens/editcategorie.screen.dart';
import 'package:my_flutter_project/presentation/screens/exitscreen.dart';
import 'package:my_flutter_project/presentation/screens/login.screen.dart';
import 'package:my_flutter_project/presentation/screens/products.dart';
import 'package:my_flutter_project/presentation/screens/profilescreen.dart';
import 'package:my_flutter_project/presentation/screens/register.screen.dart';
import 'package:my_flutter_project/presentation/screens/settings.screen.dart';
import 'package:my_flutter_project/presentation/screens/subscribe.dart';
import 'package:my_flutter_project/presentation/widgets/mybottomnavigationbar.dart';
import 'package:my_flutter_project/presentation/widgets/mydrawer.dart';
import 'package:my_flutter_project/presentation/widgets/myhome.dart';
import 'package:my_flutter_project/presentation/widgets/myproducts.dart';




Map<String, WidgetBuilder> appRoutes() {
return {
'/Home':(context) =>const Myhome(),
'/Items': (context) => Scaffold(
appBar: AppBar(
title: const Text('My Products'),
),
body: const Myproducts(),
drawer: const Mydrawer(),
bottomNavigationBar: const MyBottomNavigationBar(),
),
'/Documents': (context) => const Products(), 
'/Products': (context) => const Products(), // Route pour l'écran Products

/*'/Products': (context) => Scaffold(
appBar: AppBar(
title: const Text('My Products'),
),
body: const Myproducts(),
drawer: const Mydrawer(),
bottomNavigationBar: const MyBottomNavigationBar(),
),*/

  '/Profile': (context) => const ProfileScreen(),
'/details': (context) {final product = ModalRoute.of(context)!.settings.arguments as Product;
                               return Details(myListElement: product);
                             },  // Route pour l'écran Details 

'/Contact': (context) => const ContactScreen(),

 '/Categories': (context) => const Categorieslist(), // Route pour l'écran Categories

'/addcategories': (context) => const Addcategorie(), 

'/Exit': (context) => const ExitScreen(), // Route associée à l'action defermeture
'/editcategories': (context) {final categorie = ModalRoute.of(context)!.settings.arguments as CategorieEntity;
                               return Editcategorie(categorie: categorie);
                             },  

'/Subscribe': (context) => const Subscribe(),

'/Settings': (context) => const Login(), // Route pour l'écran login
'/register': (context) => const Register(), 
 '/settingsDetails': (context) => const SettingsScreen(), // Route pour l'écran SettingsScreen
'/shopping': (context) => const ArticlesListScreen(), // Route pour l'écran ArticlesList
'/cartView': (context) => const CartView(), // Route pour l'écran cart view
};
}

