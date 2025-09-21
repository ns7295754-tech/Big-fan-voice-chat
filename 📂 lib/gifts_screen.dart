import 'package:flutter/material.dart';

class GiftsScreen extends StatelessWidget {
  const GiftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gifts")),
      body: const Center(child: Text("Gifts Screen")),
    );
  }
}
