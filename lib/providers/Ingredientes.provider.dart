import 'package:flutter/material.dart';
import '../models/Ingredientes.dart';
class IngredientesProvider with ChangeNotifier{
  List<Ingredientes> _listIngredientes=[];
bool _loading = false;
bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
    notifyListeners();


}
List<Ingredientes> get listIngredientes =>_listIngredientes;

set listIngredientes(List<Ingredientes> value) {
    _listIngredientes = value;
    notifyListeners();
  }

  resetProvider() {
    _listIngredientes = [];
    _loading = false;
  }



}