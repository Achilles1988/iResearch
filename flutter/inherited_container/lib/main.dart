import 'package:flutter/material.dart';
import 'package:inherited_container/root_page.dart';
import 'package:inherited_container/state_page.dart';

void main() => runApp(StatePageContainer(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  RootPage(title: 'Inherited + Container'),
    );
  }
}
