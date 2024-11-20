import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget{
  
  const Myappbar({super.key});
  
 @override
 // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);


  @override
  Widget build(BuildContext context) {
    return AppBar(
  backgroundColor: const Color.fromARGB(255, 235, 226, 237),
 
  title: const Text('Home'),
          actions: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                print('button home');
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('button search');
              },
            ),
                     IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {
              Navigator.pushNamed(context, '/shopping');
          },
        ),

          ],
        );
  }
}