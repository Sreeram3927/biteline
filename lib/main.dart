import 'package:biteline/data/user.dart';
import 'package:biteline/pages/page_manager.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await User().init();
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

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          actionsIconTheme: IconThemeData(
            color: Color(0xffaaaaaa),
          ),
        ),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xffFA4A0C),
          unselectedItemColor: Color(0xffADADAF),
          type: BottomNavigationBarType.shifting,
          elevation: 0,
          backgroundColor: Color(0xFFf2f2f2),

          selectedLabelStyle: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(7.0),
            backgroundColor: MaterialStateProperty.all(const Color(0xffFA4A0C)),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),

        dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
        ),

        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            foregroundColor: MaterialStateProperty.all(const Color(0xffFA4A0C)),
          ),          
        ),

        listTileTheme: ListTileThemeData(
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        
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

          titleLarge: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          titleMedium: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          titleSmall: TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 16,
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

      home: const PageManager(),
    );
  }
}
