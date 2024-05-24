


import 'package:flutter_tarea6_equipo2/models/Drinks.dart';
import 'package:flutter_tarea6_equipo2/providers/Drinks.provider.dart';
import 'package:flutter_tarea6_equipo2/services/Drinks.services.dart';
import 'package:provider/provider.dart';

import '../widgets/alerterror.widget.dart';

class DrinksController {
  final Drinkprovider libroProvider;
  DrinksController({required this.libroProvider});

  Future<bool> traerDrinksController(context) async {
    print("Entróooo");
    final librosprovider =
        Provider.of<Drinkprovider>(context, listen: false);
    librosprovider.loading = true;
    final respuesta = await traerDrinksService('margarita');

    if (respuesta is Drinks) {
      librosprovider.listDrink = respuesta.drinks;
      librosprovider.loading = false;
      return true;
    } else {
      alertError(context, mensaje: 'No hay libros para mostrar');
    }
    return false;
  }
}
