import 'package:flutter/material.dart';
import 'package:inherited_container/state_page.dart';

class ShowPage extends StatelessWidget {
  ShowPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String recordedData = StatePageContainer.of(context).recordedData ?? 'none';
    return Scaffold(
      body: Center(
        child: Text(recordedData),
      ),
      appBar: AppBar(title: Text('显示页面'),),
    );
  }
}
