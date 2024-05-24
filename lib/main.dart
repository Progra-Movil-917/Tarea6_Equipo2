import 'package:flutter/material.dart';
import 'package:flutter_tarea6_equipo2/Router/router.dart';
import 'package:flutter_tarea6_equipo2/providers/Drinks.provider.dart';
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
      ],
      child: MaterialApp.router(
        routerConfig: mainrouter,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)),
      ),
    );
  }
}
