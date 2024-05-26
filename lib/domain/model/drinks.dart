class Cocktail {
  final String name;
  final List<String> ingredients;
  final String instructions;

  Cocktail(
      {required this.name,
      required this.ingredients,
      required this.instructions});

  factory Cocktail.fromJson(Map<String, dynamic> json) {
    return Cocktail(
      name: json['name'],
      ingredients: List<String>.from(json['ingredients']),
      instructions: json['instructions'],
    );
  }
}
