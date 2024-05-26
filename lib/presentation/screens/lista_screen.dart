import 'package:flutter/material.dart';

class ListaScreen extends StatelessWidget {
  const ListaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Lista de cocktails"),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Icon(Icons.list, size: 100))
      ],
    ));
  }
}
