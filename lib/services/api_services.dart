import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://api.api-ninjas.com/v1/cocktail";
  static const String apiKey =
      "5QEY9tVyKRroxBVmY/+XOA==RHcFzOd82mn9EvDI"; // Reemplaza con tu API Key

  Future<List<dynamic>> fetchCocktailsByName(String name) async {
    final response = await http.get(
      Uri.parse('$baseUrl?name=$name'),
      headers: {'X-Api-Key': apiKey},
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load cocktails');
    }
  }

  Future<List<dynamic>> fetchCocktailsByIngredients(String ingredients) async {
    final response = await http.get(
      Uri.parse('$baseUrl?ingredients=$ingredients'),
      headers: {'X-Api-Key': apiKey},
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load cocktails');
    }
  }
}
