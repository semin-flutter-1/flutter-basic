import 'package:flutter/material.dart';
import 'package:flutter_app/4_26_gridview_sample/model/subway_result.dart';
import 'package:flutter_app/4_26_gridview_sample/widget/Subway.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SubwayResult _result;

  @override
  void initState() {
    _result = SubwayResult();   // 데이터 받았다 치고
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3 / 5,
        children: _result
            .realtimeArrivalList
            .map((e) => Subway(e)).toList(),
      ),
    );
  }

}
