import 'package:flutter/material.dart';
import 'package:inherited_container_demo/set_page.dart';
import 'package:inherited_container_demo/show_page.dart';

class RootPage extends StatelessWidget {
  RootPage({this.title, Key key}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
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
        ),
    );
  }
}
