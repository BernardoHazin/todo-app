import 'package:flutter/material.dart';

displayDialog(BuildContext context, Function add) async {
  TextEditingController _textFieldController = TextEditingController();

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Insira sua tarefa'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Tarefa"),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              onPressed: () {
                add(_textFieldController);
                Navigator.of(context).pop();
              },
              child: new Text('ADICIONAR'),
            )
          ],
        );
      });
}
