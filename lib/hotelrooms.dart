import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
List<Room> RoomList = [
  Room(
      image: 'assets/img/room1.jpg',
      name: "single",
      description: "high quality"),
  Room(
      image: 'assets/img/room2.jpg',
      name: "double",
      description: "high quality sea view"),
  Room(
      image: 'assets/img/room3.jpg',
      name: "Aclass",
      description: "high quality"),
  Room(
      image: 'assets/img/room4.jpg',
      name: "5stars",
      description: "high quality with all you need"),
];

class Room {
  String image;
  String name;
  String description;
  Room({required this.image, required this.name, required this.description});
}

int current = 0;

class HotelRoom extends StatefulWidget {
  const HotelRoom({super.key});

  State<HotelRoom> createState() => _HotelRoomState();
}

class _HotelRoomState extends State<HotelRoom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(RoomList[current].image),
        Text(RoomList[current].name),
        Text(RoomList[current].description),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  if (current != 0) {
                    setState(() {
                      --current;
                    });
                  }
                },
                icon: const Icon(Icons.arrow_back)),
            IconButton(
                onPressed: () {
                  if (current < RoomList.length - 1) {
                    setState(() {
                      ++current;
                    });
                  }
                },
                icon: const Icon(Icons.arrow_forward)),
          ],
        )
        // OutlinedButton(onPressed: () {}, child: Text("button")),
        // TextButton(onPressed: () {}, child: Text("button")),
        // IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
      ],
    );
  }
}
