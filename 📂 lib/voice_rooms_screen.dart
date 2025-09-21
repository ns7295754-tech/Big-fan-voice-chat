import 'package:flutter/material.dart';

class VoiceRoomsScreen extends StatelessWidget {
  const VoiceRoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Voice Rooms")),
      body: const Center(child: Text("Voice Rooms Screen")),
    );
  }
}
