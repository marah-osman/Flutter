import 'package:flutter/material.dart';
import 'package:firstapp/firstscreen.dart';
import 'package:firstapp/hotelrooms.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("my App"),
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(Icons.favorite)),
            Padding(
                padding: EdgeInsets.only(right: 8.0, left: 12.0),
                child: Icon(Icons.menu)),
          ],
        ),
        // body: const FristScreen(),
        body: const HotelRoom(),
      ),
    );
  }
}
