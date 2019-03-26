import 'package:flutter/material.dart';
import 'package:scoped_model_test/set_page.dart';
import 'package:scoped_model_test/show_page.dart';

class RootPage extends StatelessWidget {
  RootPage({@required this.title, Key key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  color: Colors.blue,
                  child: Text('设置'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contxt) => SetPage()));
                  }),
              Container(
                width: 5,
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('展示'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contxt) => ShowPage()));
                },
              )
            ],
          ),
        ],
      );
  }
}
