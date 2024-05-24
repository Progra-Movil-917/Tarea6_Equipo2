import 'package:flutter/material.dart';
import '../models/Drinks.dart';

class Drinkprovider with ChangeNotifier{
  List<Drink> _listDrink=[];
  bool _loading = false;


  bool get loading => _loading;

  set loading(bool value) {
    _loading = value;
    notifyListeners();
}

List<Drink> get listDrink => _listDrink;
 set listDrink(List<Drink> value) {
    _listDrink = value;
    notifyListeners();
  }
  resetProvider() {
    _listDrink = [];
    _loading = false;
  }




}