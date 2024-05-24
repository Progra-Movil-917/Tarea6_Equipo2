import 'package:flutter_tarea6_equipo2/models/Drinks.dart';
import 'package:flutter_tarea6_equipo2/models/Ingredientes.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<dynamic> traerIngredienteServices(String ingredients) async {
  try {
    var response = await http.get(Uri.parse("https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=$ingredients"));
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      return ingredientsFromJson(response.body);
    } else if (response.statusCode == 400) {
      return 400;
    } else if (response.statusCode == 401) {
      return 401;
    } else if (response.statusCode == 404) {
      return 404;
    } else if (response.statusCode == 500) {
      return 500;
    }
  } catch (e) {
    if (e is TimeoutException) {
      http.Client().close();
      return 4500;
    }
    if (e is SocketException) {
      http.Client().close();
      return 4501;
    }
    return e;
  } finally {
    http.Client().close();
  }





  
}
