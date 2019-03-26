import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_demo/root_page.dart';
import 'package:scoped_model_demo/test_model.dart';

void main() => runApp(ScopedModel(
      child: MyApp(),
      model: TestModel(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scoped Model',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootPage(title: 'Scoped Model Test'),
    );
  }
}
