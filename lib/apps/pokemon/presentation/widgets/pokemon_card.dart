import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:poekfy/apps/pokemon/domain/entities/pokemon.dart';

class PokemonCard extends StatelessWidget {
  PokemonCard({
    @required this.pokemon,
  });

  final Pokemon pokemon;

  void openWikiLink(String wikiUrl) async {
    if (await canLaunch(wikiUrl)) {
      await launch(wikiUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          openWikiLink(pokemon.wikiUrl);
        },
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.adjust,
              size: 32.0,
            ),
          ],
        ),
        title: Text(
          '${pokemon.name} ${pokemon.pokedex}',
        ),
        subtitle: Text('${pokemon.wikiUrl}'),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16.0,
        ),
      ),
    );
  }
}
