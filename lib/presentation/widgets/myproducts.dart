import 'package:flutter/material.dart';

class Myproducts extends StatefulWidget {
  const Myproducts({super.key});

  @override
  State<Myproducts> createState() => _MyproductsState();
}

class _MyproductsState extends State<Myproducts> {

  int counter = 0;

  List<String> images = [
    "assets/images/apple.jpg",
    "assets/images/s.jpg",
    "assets/images/phone.jpg",
    "assets/images/sams.jpg",
    "assets/images/ultra.jpg",


  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Center(
          child: Text(
            "image numero : ${counter +1}",
          style: const TextStyle(fontSize:30, fontWeight:FontWeight.bold )
        ),
        ),
        Image.asset(
          images[counter],
          width:250,
          height: 250,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _previousImage,
              child: const Text("Précédent"),
              ),
              ElevatedButton(
              onPressed: _NextImage,
              child: const Text("Next"),
              ),

        ],)
      

      ],
    );
  }

  void _previousImage() {
    setState(() {
      if (counter > 0){
        counter--;
      }
      else{
        counter = images.length -1;
      }
     
    });

  }

  void _NextImage() {
    setState(() {
      if (counter < images.length -1){
        counter++;
      }
      else{
        counter = 0;
      }
     
    });
  }
}