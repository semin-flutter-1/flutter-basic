import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/4_5/image_text.dart';

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
  int _index = 0;
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '내 정보',
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final dummyItems = [
    'https://blog.kakaocdn.net/dn/chMnQ0/btqDurL9Kwp/oN687RdyAUkt0IQf6U966K/img.png',
    'https://t1.daumcdn.net/movie/f2a2f4499800518cf7b3eb999bd83c4e1f2da89b',
    'https://upload.wikimedia.org/wikipedia/commons/7/7d/IU_MelOn_Music_Awards_2017_06.jpg',
    'https://i.pinimg.com/originals/52/c7/ab/52c7ab7f3825f0b804555681b7c6098b.jpg',
    'http://www.newsfreezone.co.kr/news/photo/202011/277190_272039_1050.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageText('https://cdn3.vectorstock.com/i/1000x1000/02/07/taxi-icon-taxi-icon-taxi-vector-20830207.jpg', '택시'),
            ImageText('https://cdn3.vectorstock.com/i/1000x1000/02/07/taxi-icon-taxi-icon-taxi-vector-20830207.jpg', '버스'),
            ImageText('https://cdn3.vectorstock.com/i/1000x1000/02/07/taxi-icon-taxi-icon-taxi-vector-20830207.jpg', '택시'),
            ImageText('https://cdn3.vectorstock.com/i/1000x1000/02/07/taxi-icon-taxi-icon-taxi-vector-20830207.jpg', '택시'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageText('https://cdn3.vectorstock.com/i/1000x1000/02/07/taxi-icon-taxi-icon-taxi-vector-20830207.jpg', '택시'),
            ImageText('https://cdn3.vectorstock.com/i/1000x1000/02/07/taxi-icon-taxi-icon-taxi-vector-20830207.jpg', '택시'),
            ImageText('https://cdn3.vectorstock.com/i/1000x1000/02/07/taxi-icon-taxi-icon-taxi-vector-20830207.jpg', '택시'),
            SizedBox(
              width: 80,
              height: 80,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        autoPlayInterval: Duration(milliseconds: 2000),
      ), // 높이 400
      items: dummyItems.map((url) {
        // 다섯 페이지
        return Builder(
          builder: (BuildContext context) {
            // context를 사용하고자 할 때
            return Container(
              width: MediaQuery.of(context).size.width, // 기기의 가로 길이
              margin: EdgeInsets.symmetric(horizontal: 5.0), // 좌우 여백 5
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(10, (_) {
      return ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지사항입니다'),
      );
    });

    return Column(
      children: items,
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            new TextButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '1 페이지',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '2 페이지',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
