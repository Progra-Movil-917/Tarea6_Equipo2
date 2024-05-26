import 'package:flutter/material.dart';
import 'package:tarea6_equipo2/presentation/screens/lista_screen.dart';
import 'home.dart'; // Asegúrate de que la ruta sea correcta

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Número de pestañas
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Tab Navigation')),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.home), text: 'Home')
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(), // search_screen
            ListaScreen() // ListaScreen para mostrar lista de cocktails
          ],
        ),
      ),
    );
  }
}

// IMPORTANTE: home.dart ES EL WIDGET PARA BUSCAR BEBIDAS
