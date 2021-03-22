import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Flutter 앱 시작 부분
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

// stless
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('제목'),
      ),
      body: ListView(
        children: [
          TextField(),
          TextField(),
          ElevatedButton(onPressed: () {}, child: Text('로그인')),
          Text('Hello World',
            style: TextStyle(fontStyle: FontStyle.italic),),
          Image.network('https://img.segye.com/content/image/2020/04/02/20200402520783.jpg')
        ],
      ),
    );
  }
}
