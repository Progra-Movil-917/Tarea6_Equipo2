import 'package:flutter/material.dart';

class DetallesScreen extends StatefulWidget {
  const DetallesScreen({super.key});

  @override
  State<DetallesScreen> createState() => _DetallesScreenState();
}

class _DetallesScreenState extends State<DetallesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Detalles'),
    );
  }
}
