import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/RouteTest.dart';

class RouteBackTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print("传过来的参数 $args");
    return Scaffold(
      appBar: AppBar(
        title: Text("second title"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            var result =
                await /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RouteTest(
                    text: "我是提示xxx",
                  );
                },
              ),
            );*/
                Navigator.pushNamed(
              context,
              "tip2",
              arguments: "我是提示xxx",
            );
            print("路由返回值 $result");
          },
          child: Text("打开提示页"),
        ),
      ),
    );
  }
}
