import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  //    输出一个Scaffold
  Widget threeImage() {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Flutter'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Image.asset(
              'images/lake.jpeg',
              width: 50.0,
              height: 50.0,
            ),
            new Image.asset(
              'images/lake.jpeg',
              width: 50.0,
              height: 50.0,
            ),
            new Image.asset(
              'images/lake.jpeg',
              width: 50.0,
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }

//  输出一个Grid View
  Widget buildGrid() {
    return new GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _buildGridTileList(30));
  }

//  Grid View 数据源
  static List<Container> _buildGridTileList(int count) {
    return new List<Container>.generate(
      count,
      (int index) =>
          new Container(child: new Image.asset('images/lake.jpeg'),
    ),
    );
  }

//  输出一个动态列表 切换器支持滚动


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: buildGrid(),

    );
  }
}

