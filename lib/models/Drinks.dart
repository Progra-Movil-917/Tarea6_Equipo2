import 'package:meta/meta.dart';
import 'dart:convert';

class Driks {
    List<Drink> drinks;

    Driks({
        required this.drinks,
    });

    factory Driks.fromRawJson(String str) => Driks.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Driks.fromJson(Map<String, dynamic> json) => Driks(
        drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
    };
}

class Drink {
    String idDrink;
    String strDrink;
    dynamic strDrinkAlternate;
    String strTags;
    dynamic strVideo;
    String strCategory;
    String strIba;
    String strAlcoholic;
    String strGlass;
    String strInstructions;
    dynamic strInstructionsEs;
    String strInstructionsDe;
    dynamic strInstructionsFr;
    String strInstructionsIt;
    dynamic strInstructionsZhHans;
    dynamic strInstructionsZhHant;
    String strDrinkThumb;
    String strIngredient1;
    String strIngredient2;
    String strIngredient3;
    String strIngredient4;
    String strIngredient5;
    String strIngredient6;
    String strIngredient7;
    dynamic strIngredient8;
    dynamic strIngredient9;
    dynamic strIngredient10;
    dynamic strIngredient11;
    int strIngredient12;
    dynamic strIngredient13;
    dynamic strIngredient14;
    dynamic strIngredient15;
    String strMeasure1;
    String strMeasure2;
    String strMeasure3;
    String strMeasure4;
    String strMeasure5;
    String strMeasure6;
    String strMeasure7;
    dynamic strMeasure8;
    dynamic strMeasure9;
    dynamic strMeasure10;
    dynamic strMeasure11;
    dynamic strMeasure12;
    dynamic strMeasure13;
    dynamic strMeasure14;
    dynamic strMeasure15;
    String strImageSource;
    String strImageAttribution;
    String strCreativeCommonsConfirmed;
    DateTime dateModified;

    Drink({
        required this.idDrink,
        required this.strDrink,
        required this.strDrinkAlternate,
        required this.strTags,
        required this.strVideo,
        required this.strCategory,
        required this.strIba,
        required this.strAlcoholic,
        required this.strGlass,
        required this.strInstructions,
        required this.strInstructionsEs,
        required this.strInstructionsDe,
        required this.strInstructionsFr,
        required this.strInstructionsIt,
        required this.strInstructionsZhHans,
        required this.strInstructionsZhHant,
        required this.strDrinkThumb,
        required this.strIngredient1,
        required this.strIngredient2,
        required this.strIngredient3,
        required this.strIngredient4,
        required this.strIngredient5,
        required this.strIngredient6,
        required this.strIngredient7,
        required this.strIngredient8,
        required this.strIngredient9,
        required this.strIngredient10,
        required this.strIngredient11,
        required this.strIngredient12,
        required this.strIngredient13,
        required this.strIngredient14,
        required this.strIngredient15,
        required this.strMeasure1,
        required this.strMeasure2,
        required this.strMeasure3,
        required this.strMeasure4,
        required this.strMeasure5,
        required this.strMeasure6,
        required this.strMeasure7,
        required this.strMeasure8,
        required this.strMeasure9,
        required this.strMeasure10,
        required this.strMeasure11,
        required this.strMeasure12,
        required this.strMeasure13,
        required this.strMeasure14,
        required this.strMeasure15,
        required this.strImageSource,
        required this.strImageAttribution,
        required this.strCreativeCommonsConfirmed,
        required this.dateModified,
    });

    factory Drink.fromRawJson(String str) => Drink.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

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
        strIngredient1: json["strIngredient1"],
        strIngredient2: json["strIngredient2"],
        strIngredient3: json["strIngredient3"],
        strIngredient4: json["strIngredient4"],
        strIngredient5: json["strIngredient5"],
        strIngredient6: json["strIngredient6"],
        strIngredient7: json["strIngredient7"],
        strIngredient8: json["strIngredient8"],
        strIngredient9: json["strIngredient9"],
        strIngredient10: json["strIngredient10"],
        strIngredient11: json["strIngredient11"],
        strIngredient12: json["strIngredient12"],
        strIngredient13: json["strIngredient13"],
        strIngredient14: json["strIngredient14"],
        strIngredient15: json["strIngredient15"],
        strMeasure1: json["strMeasure1"],
        strMeasure2: json["strMeasure2"],
        strMeasure3: json["strMeasure3"],
        strMeasure4: json["strMeasure4"],
        strMeasure5: json["strMeasure5"],
        strMeasure6: json["strMeasure6"],
        strMeasure7: json["strMeasure7"],
        strMeasure8: json["strMeasure8"],
        strMeasure9: json["strMeasure9"],
        strMeasure10: json["strMeasure10"],
        strMeasure11: json["strMeasure11"],
        strMeasure12: json["strMeasure12"],
        strMeasure13: json["strMeasure13"],
        strMeasure14: json["strMeasure14"],
        strMeasure15: json["strMeasure15"],
        strImageSource: json["strImageSource"],
        strImageAttribution: json["strImageAttribution"],
        strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"],
        dateModified: DateTime.parse(json["dateModified"]),
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
        "strIngredient1": strIngredient1,
        "strIngredient2": strIngredient2,
        "strIngredient3": strIngredient3,
        "strIngredient4": strIngredient4,
        "strIngredient5": strIngredient5,
        "strIngredient6": strIngredient6,
        "strIngredient7": strIngredient7,
        "strIngredient8": strIngredient8,
        "strIngredient9": strIngredient9,
        "strIngredient10": strIngredient10,
        "strIngredient11": strIngredient11,
        "strIngredient12": strIngredient12,
        "strIngredient13": strIngredient13,
        "strIngredient14": strIngredient14,
        "strIngredient15": strIngredient15,
        "strMeasure1": strMeasure1,
        "strMeasure2": strMeasure2,
        "strMeasure3": strMeasure3,
        "strMeasure4": strMeasure4,
        "strMeasure5": strMeasure5,
        "strMeasure6": strMeasure6,
        "strMeasure7": strMeasure7,
        "strMeasure8": strMeasure8,
        "strMeasure9": strMeasure9,
        "strMeasure10": strMeasure10,
        "strMeasure11": strMeasure11,
        "strMeasure12": strMeasure12,
        "strMeasure13": strMeasure13,
        "strMeasure14": strMeasure14,
        "strMeasure15": strMeasure15,
        "strImageSource": strImageSource,
        "strImageAttribution": strImageAttribution,
        "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed,
        "dateModified": dateModified.toIso8601String(),
    };
}
