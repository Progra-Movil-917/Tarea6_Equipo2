import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';

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
      home: HomeScreen(),
      routes: {
        '/search': (context) => SearchScreen(),
      },
=======
import 'package:flutter_tarea6_equipo2/Router/router.dart';
import 'package:flutter_tarea6_equipo2/providers/Drinks.provider.dart';
import 'package:flutter_tarea6_equipo2/providers/Ingredientes.provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Drinkprovider()),
        ChangeNotifierProvider(create: (context) => IngredientesProvider()),
      ],
      child: MaterialApp.router(
        routerConfig: mainrouter,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)),
      ),
>>>>>>> 3218bcc09a50db1e6e117c053a1272c324fb9b7e
    );
  }
}
