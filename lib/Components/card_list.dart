import 'package:flutter/material.dart';

import './card.dart' as Card;

class CardList extends StatelessWidget {
  final List<String> cards;
  final Function dismiss;

  CardList({this.cards, this.dismiss});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.yellow,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        key: Key('Hey'),
        children: <Widget>[
          ...cards
              .map(
                (name) => Card.Card(name, dismiss),
              )
              .toList(),
        ],
      ),
    );
  }
}
