import 'package:flutter/material.dart';
import 'auth_screen.dart';
import 'inbox_screen.dart';
import 'voice_chat_screen.dart';
import 'wallet_screen.dart';
import 'gift_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(const BigFunApp());
}

class BigFunApp extends StatelessWidget {
  const BigFunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BigFun',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // The first screen that will be shown when the app starts
      home: const AuthScreen(),
      routes: {
        '/auth': (context) => const AuthScreen(),
        '/inbox': (context) => const InboxScreen(),
        '/voice': (context) => const VoiceChatScreen(),
        '/wallet': (context) => const WalletScreen(),
        '/gift': (context) => const GiftScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
