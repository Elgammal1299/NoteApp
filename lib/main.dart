import 'package:flutter/material.dart';
import 'package:note_app/core/theme/theme_color.dart';
import 'package:note_app/feature/home/ui/homeScreen.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeApp.themeDataLight(),
    );
  }
}
