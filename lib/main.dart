import 'package:flutter/material.dart';

void main() {
  runApp(const BigFunApp());
}

class BigFunApp extends StatelessWidget {
  const BigFunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BigFun Voice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BigFun Voice Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.account_circle, size: 120),
            const SizedBox(height: 12),
            const Text('Welcome to BigFun Voice Chat'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to voice chat screen
              },
              child: const Text('Join Voice Room'),
            ),
          ],
        ),
      ),
    );
  }
}
