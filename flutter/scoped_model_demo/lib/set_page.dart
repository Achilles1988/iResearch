import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_demo/test_model.dart';

class SetPage extends StatelessWidget {
  SetPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置页面'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ScopedModelDescendant<TestModel>(
        builder: (context, child, TestModel model) {
      return Center(
        child: TextField(
          textAlign: TextAlign.center,
          controller: TextEditingController(),
          onSubmitted: (text) {
            try {
              model..recordedData = text;
              Navigator.pop(context);
            } catch (e) {
              print(e);
            }
          },
          decoration:
              InputDecoration.collapsed(hintText: 'input the text to record'),
        ),
      );
    });
  }
}
