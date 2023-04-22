import 'package:flutter/material.dart';
import 'package:shekinah/data/data.dart';
import 'package:shekinah/models/oferta.dart';
import 'package:shekinah/ui/colors.dart';
import 'package:shekinah/ui/detalle_oferta.dart';

class MySearchDelegate extends SearchDelegate {
  List<Oferta> searchResults = tacos + churros + cafes;

  @override
  String get searchFieldLabel => 'Buscar';

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) => [];

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Oferta> suggestions = searchResults.where((searchResult) {
      final result = searchResult.nombre.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();
    return Container(
      color: lightColorScheme.tertiary,
      child: ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final suggestion = suggestions[index].nombre;
            return ListTile(
              title: Text(suggestion, style: const TextStyle(
                color: Colors.white,
                fontFamily: 'DancingScript',
                fontSize: 24
              ),),
              onTap: () {
                query = suggestion;

                final flag = {};
                for (final oferta in searchResults) {
                  final nombreOferta = oferta.nombre;
                  flag[nombreOferta] = oferta;
                }
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetalleOferta(oferta: flag[query])));
              },
            );
          }),
    );
  }
}
