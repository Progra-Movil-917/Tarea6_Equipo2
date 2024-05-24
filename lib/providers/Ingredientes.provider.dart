import 'package:flutter/material.dart';
import '../models/Ingredientes.dart';
class IngredientesProvider with ChangeNotifier{
  List<Ingredient> _listIngredients=[];
bool _loading = false;
bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
    notifyListeners();


}
List<Ingredient> get listIngredients =>_listIngredients;

set listIngredients(List<Ingredient> value) {
    _listIngredients = value;
    notifyListeners();
  }

  resetProvider() {
    _listIngredients = [];
    _loading = false;
  }



}