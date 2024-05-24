import 'dart:convert';

Drinks drinksFromJson(String str) => Drinks.fromJson(json.decode(str));

String drinksToJson(Drinks data) => json.encode(data.toJson());

class Drinks {
  List<Drink> drinks;

  Drinks({
    required this.drinks,
  });

  factory Drinks.fromJson(Map<String, dynamic> json) => Drinks(
        drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
      };
}

class Drink {
  String idDrink;
  String strDrink;
  String? strDrinkAlternate;
  String? strTags;
  String? strVideo;
  String strCategory;
  String? strIba;
  String strAlcoholic;
  String strGlass;
  String strInstructions;
  String? strInstructionsEs;
  String? strInstructionsDe;
  String? strInstructionsFr;
  String strInstructionsIt;
  String? strInstructionsZhHans;
  String? strInstructionsZhHant;
  String strDrinkThumb;
  String? strImageSource;
  String? strImageAttribution;
  String strCreativeCommonsConfirmed;
  DateTime? dateModified;

  List<String?> ingredients;
  List<String?> measures;

  Drink({
    required this.idDrink,
    required this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    required this.strCategory,
    this.strIba,
    required this.strAlcoholic,
    required this.strGlass,
    required this.strInstructions,
    this.strInstructionsEs,
    this.strInstructionsDe,
    this.strInstructionsFr,
    required this.strInstructionsIt,
    this.strInstructionsZhHans,
    this.strInstructionsZhHant,
    required this.strDrinkThumb,
    this.strImageSource,
    this.strImageAttribution,
    required this.strCreativeCommonsConfirmed,
    this.dateModified,
    required this.ingredients,
    required this.measures,
  });

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        idDrink: json["idDrink"],
        strDrink: json["strDrink"],
        strDrinkAlternate: json["strDrinkAlternate"],
        strTags: json["strTags"],
        strVideo: json["strVideo"],
        strCategory: json["strCategory"],
        strIba: json["strIBA"],
        strAlcoholic: json["strAlcoholic"],
        strGlass: json["strGlass"],
        strInstructions: json["strInstructions"],
        strInstructionsEs: json["strInstructionsES"],
        strInstructionsDe: json["strInstructionsDE"],
        strInstructionsFr: json["strInstructionsFR"],
        strInstructionsIt: json["strInstructionsIT"],
        strInstructionsZhHans: json["strInstructionsZH-HANS"],
        strInstructionsZhHant: json["strInstructionsZH-HANT"],
        strDrinkThumb: json["strDrinkThumb"],
        strImageSource: json["strImageSource"],
        strImageAttribution: json["strImageAttribution"],
        strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"],
        dateModified: json["dateModified"] == null
            ? null
            : DateTime.parse(json["dateModified"]),
        ingredients: [
          json["strIngredient1"],
          json["strIngredient2"],
          json["strIngredient3"],
          json["strIngredient4"],
          json["strIngredient5"],
          json["strIngredient6"],
          json["strIngredient7"],
          json["strIngredient8"],
          json["strIngredient9"],
          json["strIngredient10"],
          json["strIngredient11"],
          json["strIngredient12"],
          json["strIngredient13"],
          json["strIngredient14"],
          json["strIngredient15"]
        ],
        measures: [
          json["strMeasure1"],
          json["strMeasure2"],
          json["strMeasure3"],
          json["strMeasure4"],
          json["strMeasure5"],
          json["strMeasure6"],
          json["strMeasure7"],
          json["strMeasure8"],
          json["strMeasure9"],
          json["strMeasure10"],
          json["strMeasure11"],
          json["strMeasure12"],
          json["strMeasure13"],
          json["strMeasure14"],
          json["strMeasure15"]
        ],
      );

  Map<String, dynamic> toJson() => {
        "idDrink": idDrink,
        "strDrink": strDrink,
        "strDrinkAlternate": strDrinkAlternate,
        "strTags": strTags,
        "strVideo": strVideo,
        "strCategory": strCategory,
        "strIBA": strIba,
        "strAlcoholic": strAlcoholic,
        "strGlass": strGlass,
        "strInstructions": strInstructions,
        "strInstructionsES": strInstructionsEs,
        "strInstructionsDE": strInstructionsDe,
        "strInstructionsFR": strInstructionsFr,
        "strInstructionsIT": strInstructionsIt,
        "strInstructionsZH-HANS": strInstructionsZhHans,
        "strInstructionsZH-HANT": strInstructionsZhHant,
        "strDrinkThumb": strDrinkThumb,
        "strImageSource": strImageSource,
        "strImageAttribution": strImageAttribution,
        "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed,
        "dateModified": dateModified?.toIso8601String(),
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "measures": List<dynamic>.from(measures.map((x) => x)),
      };
}
