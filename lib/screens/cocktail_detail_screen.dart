import 'package:flutter/material.dart';
import '../models/cocktail_model.dart';

class CocktailDetailScreen extends StatelessWidget {
  final Cocktail cocktail;

  CocktailDetailScreen({required this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cocktail.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cocktail.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...cocktail.ingredients.map((ingredient) => Text(ingredient)),
            SizedBox(height: 10),
            Text('Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(cocktail.instructions),
          ],
        ),
      ),
    );
  }
}
