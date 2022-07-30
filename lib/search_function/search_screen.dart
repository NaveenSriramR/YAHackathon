import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:google_fonts/google_fonts.dart';

import '../rent_app/shirts/single_product.dart';
import 'search_provider.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final SearchProvider _searchProvider = SearchProvider();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            AutoSizeText(
              'Search Page',
              style: GoogleFonts.exo(
                color: Theme.of(context).secondaryHeaderColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  autofocus: true,
                  decoration: InputDecoration(
                    label: const Text(
                      'Search for products',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  // print(pattern.);
                  // backend call.
                  final searchResults = _searchProvider.searchResults(
                    query: pattern,
                  );

                  return searchResults as dynamic;
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text((suggestion as Map)['name']),
                    subtitle: Text('${suggestion['cost'].toString()} Rs'),
                  );
                },
                onSuggestionSelected: (suggestion) {
                  final data = suggestion as Map;
                  print(data);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SingleProduct(
                        productName: data['name'] == null ? "A" : data['name'],
                        productId:
                            data['id'].toString() == null ? "A" : data['id'],
                        productColor:
                            data['color'] == null ? "A" : data['color'],
                        productDescription: data['description'] == null
                            ? 'No description'
                            : data['description'],
                        productMaterial:
                            data['material'] ? "A" : data['material'],
                        productImageUrl:
                            "https://firebasestorage.googleapis.com/v0/b/tryonn-9ae69.appspot.com/o/${data['imageUrl']}?alt=media",
                        productYoutubeUrl: data['youtubeLink'] == null
                            ? "A"
                            : data['youtubeLink'],
                        productCost: data['cost'].toString() == null
                            ? 'A'
                            : data['cost'],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
          ],
        ),
      ),
    );
  }
}
