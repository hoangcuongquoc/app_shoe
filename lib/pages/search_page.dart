import 'package:flutter/material.dart';
import '../models/shoe.dart';

class SearchPage extends StatefulWidget {
  final List<Shoe> allShoes; // Pass the list of all shoes to the search page
  const SearchPage({super.key, required this.allShoes});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchQuery = '';
  List<Shoe> filteredShoes = [];

  @override
  void initState() {
    super.initState();
    filteredShoes = widget.allShoes; // Initially show all shoes
  }

  void updateSearchQuery(String query) {
    setState(() {
      searchQuery = query;
      filteredShoes = widget.allShoes
          .where((shoe) => shoe.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Shoes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Input
            TextField(
              onChanged: updateSearchQuery,
              decoration: InputDecoration(
                hintText: 'Search for shoes...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20),
            // Search Results
            Expanded(
              child: filteredShoes.isNotEmpty
                  ? ListView.builder(
                itemCount: filteredShoes.length,
                itemBuilder: (context, index) {
                  final shoe = filteredShoes[index];
                  return ListTile(
                    leading: Image.asset(shoe.imagePath, width: 50, height: 50),
                    title: Text(shoe.name),
                    subtitle: Text('\$${shoe.price}'),
                  );
                },
              )
                  : const Center(
                child: Text('No shoes found'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
