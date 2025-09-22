import 'package:flutter/material.dart';

void main() {
  runApp(const BigFunApp());
}

class BigFunApp extends StatelessWidget {
  const BigFunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BigFun',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/auth': (context) => const PlaceholderScreen('Auth'),
        '/inbox': (context) => const PlaceholderScreen('Inbox'),
        '/profile': (context) => const PlaceholderScreen('Profile'),
        '/voice': (context) => const PlaceholderScreen('Voice'),
        '/wallet': (context) => const PlaceholderScreen('Wallet'),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BigFun Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.account_circle, size: 120),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/auth'),
              child: const Text('Go to Auth'),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String name;
  const PlaceholderScreen(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Text('$name screen (placeholder)'),
      ),
    );
  }
}
