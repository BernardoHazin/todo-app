import 'package:mobx_codegen/mobx_codegen.dart';
import 'package:flutter/material.dart';
import './Layouts/default.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      key: Key('AJdksbhsdsgHJ2'),
      home: Default(),
    );
  }
}
