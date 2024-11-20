import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact Us",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.blueAccent),
              title: const Text("+ (216) 26798363"),
              subtitle: const Text("Phone"),
              onTap: () {
                // Action to dial the number
              },
            ),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.blueAccent),
              title: const Text("Itek@gmail.com"),
              subtitle: const Text("Email"),
              onTap: () {
                // Action to send an email
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on, color: Colors.blueAccent),
              title: const Text("Sfax, Sakiet Ezzit klm 5"),
              subtitle: const Text("Address"),
              onTap: () {
                // Action to open location in maps
              },
            ),
            const SizedBox(height: 16),
            const Text(
              "Follow Us",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.facebook, color: Colors.blueAccent),
                  onPressed: () {
                    // Action to open Facebook
                  },
                ),
                
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
