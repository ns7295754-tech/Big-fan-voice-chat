import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final String roomTitle;

  const RoomCard({super.key, required this.roomTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(roomTitle),
      ),
    );
  }
}
