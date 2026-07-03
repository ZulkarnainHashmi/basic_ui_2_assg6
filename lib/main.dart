// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true, // Modern UI ke liye
        cardTheme: CardThemeData(color: Colors.white),
      ),
      home: HomeScreen(),
    );
  }
}