import 'package:flutter/material.dart';
import 'package:inherited_container/state_page.dart';

class SetPage extends StatelessWidget {
  SetPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置页面'),
      ),
      body: Center(
        child: TextField(
          textAlign: TextAlign.center,
          controller: TextEditingController(),
          onSubmitted: (text) {
            try {
              StatePageContainer.of(context).recordedData = text;
              Navigator.pop(context);
            } catch (e) {
              print(e);
            }
          },
          decoration:
              InputDecoration.collapsed(hintText: 'input the text to record'),
        ),
      ),
    );
  }
}
