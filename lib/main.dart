import 'package:flutter/material.dart';
import 'presentation/screens/MainScreen.dart';
import 'presentation/screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cocktail App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/search': (context) => SearchScreen(),
      },
    );
  }
}


// IMPORTANTE: home.dart ES EL WIDGET PARA BUSCAR BEBIDAS