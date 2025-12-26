import 'package:flutter/material.dart';
import 'package:hw_2_6/pages/chats_page.dart';
import 'package:hw_2_6/widgets/app_drawer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

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
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2AABEE),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
        ),
      ),
      themeMode: _themeMode,
      home: HomePage(
        themeMode: _themeMode,
        onThemeChanged: _toggleTheme,
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeChanged;

  const HomePage({
    super.key,
    required this.themeMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Telegram Drawer')),
      drawer: AppDrawer(
        themeMode: themeMode,
        onThemeChanged: onThemeChanged,
      ),
      body: const ChatsPage(
        
      ),
    );
  }
}
