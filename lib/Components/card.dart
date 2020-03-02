import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  final String name;
  final Function dismiss;

  Card(this.name, this.dismiss);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(name),
      child: Text(name),
      onDismissed: (dir) {
        dismiss(name);
      },
    );
  }
}
