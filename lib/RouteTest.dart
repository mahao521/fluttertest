import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteTest extends StatelessWidget {

  final String text;

  RouteTest({
    Key key,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(onPressed: () => Navigator.pop(context,"我是返回值"),
             // Navigator.of(context).pushReplacementNamed("new_pages",arguments: "我是返回值啊"),
              child: Text("返回"),)
            ],
          ),
        ),
      ),
    );
  }
}
