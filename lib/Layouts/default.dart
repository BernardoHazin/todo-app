import 'package:flutter/material.dart';
import '../Components/add_dialog.dart';

class Default extends StatefulWidget {
  @override
  _DefaultState createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  final List<String> cards = [
    'Finalizar texto para o medium',
    'Declarar imposto de renda'
  ];

  void addTask(TextEditingController taskName) {
    setState(() {
      cards.add(taskName.text);
    });
  }

  void dismissTask(String taskName) {
    setState(() {
      print(cards.toString());
      cards.remove(taskName);
      print(cards.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HEY'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        color: Colors.yellow,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          key: Key('Hey'),
          children: <Widget>[
            ...cards
                .map(
                  (name) => Dismissible(
                    key: Key(name),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(name),
                      ),
                    ),
                    onDismissed: (dir) {
                      dismissTask(name);
                    },
                  ),
                )
                .toList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => displayDialog(context, addTask),
        child: Icon(Icons.add),
      ),
    );
  }
}
