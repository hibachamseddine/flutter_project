import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0, //entre col
      mainAxisSpacing: 30.0,//entre lig
      children: List.generate(choices.length, (index){
        return Center(
          child: SelectCard(choice: choices[index]),
          );
      },
    ),
    );
  }
  
 
}

class Choice{
  const Choice({required this.title,required this.icon,required this.colorB});
  final String title;
  final IconData icon;
  final MaterialAccentColor colorB;
}

const List<Choice> choices= [

  Choice(title: 'Home', icon:Icons.home, colorB: Colors.purpleAccent),
  Choice(title: 'Categories', icon:Icons.map, colorB: Colors.amberAccent),
  Choice(title: 'Documents', icon:Icons.document_scanner, colorB: Colors.greenAccent),
  Choice(title: 'Products', icon:Icons.photo_album, colorB: Colors.pinkAccent),
  Choice(title: 'Synchronization', icon:Icons.wifi, colorB: Colors.limeAccent),
  Choice(title: 'Settings', icon:Icons.settings, colorB: Colors.lightBlueAccent),
  
];

 class SelectCard extends StatelessWidget {
    const SelectCard({super.key, required this.choice});
    final Choice choice;
    @override
  Widget build(BuildContext context) {
   return InkWell(
    onTap: () {
    print("inkWell pressed");
    Navigator.of(context).pushNamed('/${choice.title}');
    },
    splashColor: Colors.red,
     child: Card(
      color: const Color.fromARGB(248, 219, 205, 220),
      child: Center(
        child: Column(
          children: [
            Expanded(child: Icon(choice.icon, size:50.0, color: choice.colorB)),
            Text(choice.title,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
     
          ],
        ),
      ),
     
     ),
   );
  }
  
 }