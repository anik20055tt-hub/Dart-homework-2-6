import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // текущее состояние темы

  void _toggleTheme(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Drawer',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.shade100,
        colorSchemeSeed: const Color(0xFF2AABEE),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      themeMode: _themeMode, // <-- управляемая тема
      home: HomePage(
        themeMode: _themeMode,
        onThemeChanged: _toggleTheme,
      ),
    );
  }
}

