import 'package:flutter/material.dart';
import 'package:tarea6_equipo2/data/repository/bebidas_repository.dart';
import 'package:tarea6_equipo2/domain/model/drinks.dart';
import 'package:tarea6_equipo2/presentation/screens/cocktail_detail_screen.dart';

// IMPORTANTE: home.dart ES EL WIDGET PARA BUSCAR BEBIDAS

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ApiService apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();
  late Future<List<Cocktail>> cocktails = Future.value([]);

  void _searchCocktails() {
    setState(() {
      cocktails = apiService
          .fetchCocktailsByName(_searchController.text)
          .then((data) => data.map((item) => Cocktail.fromJson(item)).toList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Cocktails'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Enter cocktail name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _searchCocktails,
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Cocktail>>(
                future: cocktails,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error al cargar cócteles'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No se han encontrado cócteles'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data![index].name),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CocktailDetailScreen(
                                    cocktail: snapshot.data![index]),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
