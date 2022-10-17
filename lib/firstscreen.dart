import 'package:flutter/material.dart';

class FristScreen extends StatelessWidget {
  const FristScreen({super.key});

  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const CircleAvatar(
          radius: 80, backgroundImage: AssetImage('assets/img/profil2.jpg')),
      const Text(
        "marah osman",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const Text(
        "Front End Devolper",
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.normal, color: Colors.grey),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.facebook),
          Icon(Icons.account_box),
          Icon(Icons.install_desktop),
        ],
      ),
      const Divider(),
      Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(Icons.home),
                  Text("1.3K"),
                  Text("Followers"),
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.access_alarm),
                  Text("1.3K"),
                  Text("Followers"),
                ],
              )
            ],
          ))
    ]);
  }
}
