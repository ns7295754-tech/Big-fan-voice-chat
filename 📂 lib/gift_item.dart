import 'package:flutter/material.dart';

class GiftItem extends StatelessWidget {
  final String giftName;

  const GiftItem({super.key, required this.giftName});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(giftName),
      ),
    );
  }
}
