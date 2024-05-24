import 'package:flutter/material.dart';
import 'package:flutter_tarea6_equipo2/controllers/Ingredientes.controller.dart';
import 'package:flutter_tarea6_equipo2/controllers/drink.controller.dart';
import 'package:flutter_tarea6_equipo2/providers/Drinks.provider.dart';
import 'package:flutter_tarea6_equipo2/providers/Ingredientes.provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final librosProvider = Provider.of<Drinkprovider>(context);
    final ingredientesProvider = Provider.of<IngredientesProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bienvenido a Cocktails',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Iniciar'),
              onPressed: () {
                DrinksController(libroProvider: librosProvider)
                    .traerDrinksController(context)
                    .then((value) {
                  for (var i = 0; i < librosProvider.listDrink.length; i++) {
                    print("Bebida: ${librosProvider.listDrink[i].strIngredient1}");
                  }
                  
                }).then((value) {

                  //  IngredientesController(ingredientesProvider: ingredientesProvider).traerIngredientesController(context, librosProvider.listDrink[1].idDrink);
                  
                }
                );
                context.push('/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
