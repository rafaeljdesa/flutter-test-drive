import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_drive/main.dart';

class FavoritesPage extends StatelessWidget {

  /*@override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return ListView(
      children: [
        ListTile(title: Text('Favorites:')),
        //for (var pair in appState.favorites) 
        //  BigCard(pair: pair)
        ...appState.favorites
          .map((pair) => BigCard(pair: pair))
          .toList(growable: false)
      ],
    );
  }*/

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          ),
      ],
    );
  }

}