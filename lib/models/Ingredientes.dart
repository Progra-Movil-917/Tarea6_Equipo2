import 'dart:convert';

Ingredients ingredientsFromJson(String str) =>
    Ingredients.fromJson(json.decode(str));

String ingredientsToJson(Ingredients data) => json.encode(data.toJson());

class Ingredients {
  List<Ingredient> ingredients;

  Ingredients({
    required this.ingredients,
  });

  factory Ingredients.fromJson(Map<String, dynamic> json) => Ingredients(
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
      };
}

class Ingredient {
  String idIngredient;
  String strIngredient;
  String? strDescription;
  String? strType;
  String? strAlcohol;
  String? strAbv;

  Ingredient({
    required this.idIngredient,
    required this.strIngredient,
    this.strDescription,
    this.strType,
    this.strAlcohol,
    this.strAbv,
  });

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
