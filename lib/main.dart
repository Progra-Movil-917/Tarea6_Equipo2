import 'package:flutter/material.dart';
import 'package:flutter_tarea6_equipo2/Router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: mainrouter,
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)),
    );
  }
}
