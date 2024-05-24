import 'package:meta/meta.dart';
import 'dart:convert';

class Ingredientes {
    List<Ingredient> ingredients;

    Ingredientes({
        required this.ingredients,
    });

    factory Ingredientes.fromRawJson(String str) => Ingredientes.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Ingredientes.fromJson(Map<String, dynamic> json) => Ingredientes(
        ingredients: List<Ingredient>.from(json["ingredients"].map((x) => Ingredient.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
    };
}

class Ingredient {
    String idIngredient;
    String strIngredient;
    String strDescription;
    String strType;
    String strAlcohol;
    String strAbv;

    Ingredient({
        required this.idIngredient,
        required this.strIngredient,
        required this.strDescription,
        required this.strType,
        required this.strAlcohol,
        required this.strAbv,
    });

    factory Ingredient.fromRawJson(String str) => Ingredient.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        idIngredient: json["idIngredient"],
        strIngredient: json["strIngredient"],
        strDescription: json["strDescription"],
        strType: json["strType"],
        strAlcohol: json["strAlcohol"],
        strAbv: json["strABV"],
    );

    Map<String, dynamic> toJson() => {
        "idIngredient": idIngredient,
        "strIngredient": strIngredient,
        "strDescription": strDescription,
        "strType": strType,
        "strAlcohol": strAlcohol,
        "strABV": strAbv,
    };
}
