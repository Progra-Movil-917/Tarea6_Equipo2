


import 'package:flutter_tarea6_equipo2/models/Drinks.dart';
import 'package:flutter_tarea6_equipo2/models/Ingredientes.dart';
import 'package:flutter_tarea6_equipo2/providers/Drinks.provider.dart';
import 'package:flutter_tarea6_equipo2/providers/Ingredientes.provider.dart';
import 'package:flutter_tarea6_equipo2/services/Drinks.services.dart';
import 'package:flutter_tarea6_equipo2/services/Ingredientes.dart';
import 'package:provider/provider.dart';

import '../widgets/alerterror.widget.dart';

class IngredientesController {
  final IngredientesProvider ingredientesProvider;
  IngredientesController({required this.ingredientesProvider});

  Future<bool> traerIngredientesController(context, $ingrediente) async {
    print("Entróooo");
    final ingredientesProvider =
        Provider.of<IngredientesProvider>(context, listen: false);
    ingredientesProvider.loading = true;
    final respuesta = await traerIngredienteServices($ingrediente);

    if (respuesta is Ingredients) {
      ingredientesProvider.listIngredients = respuesta.ingredients;
      ingredientesProvider.loading = false;
      return true;
    } else {
      alertError(context, mensaje: 'No hay ingrendientes para mostrar');
    }
    return false;
  }
}
