import 'package:biteline/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 250, 75, 12),
        scaffoldBackgroundColor: const Color(0xFFf2f2f2),
        
        textTheme: const TextTheme(

          headlineLarge: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          headlineMedium: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          headlineSmall: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 18,
            letterSpacing: 1.25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          titleMedium: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          bodyMedium: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 123, 123, 124),
          ),

          bodySmall: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 123, 123, 124),
          ),

        ),
      ),

      home: const HomePage(),
    );
  }
}
