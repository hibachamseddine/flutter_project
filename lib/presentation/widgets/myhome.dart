import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child : Column(
          children: [
            const Center(
             child: Text(
              "Hello",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontStyle: FontStyle.italic, // Makes the text italic
                fontWeight: FontWeight.bold, // Makes the text bold
              ),
            ),

              
            ),
             const Center(
              child: Text(
                "Hiba",
                style: TextStyle(
                  color: Colors.red,
                   fontSize: 20,
                   fontStyle: FontStyle.italic, // Makes the text italic
                  fontWeight: FontWeight.bold,
                   ),
              ),
             ),
            Center(
            child: Image.network(
              "https://www.apple.com/newsroom/images/product/iphone/standard/Apple_iphone_11-rosette-family-lineup-091019_big.jpg.large.jpg",
              height: 250,
              width: 250,
            ),
          ),

           Center(
            child: Image.asset(
              "assets/images/brother.jpg",
               height: 250,
              width: 250,
         
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/Flutter.jpg",
               height: 250,
              width: 250,
         
            ),
          ),

          ],
        ),
      );
  }
}