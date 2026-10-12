import 'package:flutter/material.dart';
import 'screen/profile_screen.dart';

void main() {
  runApp(const ProfileUIApp());
}

class ProfileUIApp extends StatelessWidget {
  const ProfileUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F5F7),
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0878E8),
        ),
      ),
      home: const ProfileScreen(),
    );
  }
}