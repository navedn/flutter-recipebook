import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 253, 191, 232), // Global background color
        appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(247, 37, 133, 1), // Global AppBar color
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        listTileTheme: const ListTileThemeData(
          tileColor: Color.fromRGBO(249, 189, 255, 1), // Global ListTile color
        ),
      ),
      home: HomeScreen(),
    );
  }
}
