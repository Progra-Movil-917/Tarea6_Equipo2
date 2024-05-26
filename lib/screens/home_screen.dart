import 'package:cocktail_app/services/api_services.dart';
import 'package:flutter/material.dart';
import '../models/cocktail_model.dart';
import 'cocktail_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
        ],
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
                    return Center(child: Text('Failed to load cocktails'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No cocktails found'));
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
