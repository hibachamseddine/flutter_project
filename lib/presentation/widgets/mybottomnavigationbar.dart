import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Calls',

          ),

           BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Camera',

          ),

           BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',

          ),
          

      ]

    );
    
  }
}