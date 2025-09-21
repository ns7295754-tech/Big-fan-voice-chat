import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Import all screens
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/gifts_screen.dart';
import 'screens/voice_rooms_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase (requires android/app/google-services.json)
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BigFun',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      // App starts with SplashScreen
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/wallet': (context) => const WalletScreen(),
        '/gifts': (context) => const GiftsScreen(),
        '/voiceRooms': (context) => const VoiceRoomsScreen(),
      },
    );
  }
}
