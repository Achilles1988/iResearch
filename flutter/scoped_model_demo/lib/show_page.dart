import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_demo/test_model.dart';

class ShowPage extends StatelessWidget {
  ShowPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TestModel>(builder: (context, child, TestModel model) {
      String recordedData = model.recordedData ?? 'none';
      return Scaffold(
        body: Center(
          child: Text(recordedData),
        ),
        appBar: AppBar(
          title: Text('显示页面'),
        ),
      );
    });
  }
}
