import 'package:flutter/material.dart';
import 'package:tugas_android/homepage/home.dart';
import 'package:tugas_android/homepage/profile.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeApp(),
        '/profile': (context) => const ProfileApp(),
        // '/search': (context) => SearchApp()
      },
    );
  }
}

void main() {
  runApp(const MainApp());
}