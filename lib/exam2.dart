import 'dart:io';
import 'dart:math';

// 메인 함수
void main() {
  // 파라미터는 뭐지?? => String 3개 (제목, 주소, 본문)
  // email('안녕하세요', 'abc@abc.com', '냉무');
  // print(calcTriangleArea(10, 5));
  //
  // double result = calcTriangleArea(20, 30);
  // print('반지름을 입력하세요');
  // double radius = double.parse(stdin.readLineSync());
  // print('반지름이 $radius인 원의 넓이는 ${calcCircleArea(radius)}');

  // 파라미터는 뭐지?? => String 3개 (제목, 주소, 본문)
  // email(title: '안녕하세요',
  //     address: 'abc@abc.com',
  //     text: '냉무');

  email(text: '냉무', address: '');
}

void email({String title, String address, String text}) {
  // title 인자로 들어온 값은 뭐야?
  print('$address 에 아래의 메일을 송신한다. ');

  if (title == null) {
    title = '제목 없음';
  }

  print('제목 : $title');
  print('본문 : $text');
}

// PI * R ^ 2
double calcCircleArea(double radius) {
  double result = pi * radius * radius;
  return result;
}

// 함수
void q4() {
  print('[메뉴] 1: 검색, 2: 등록, 3: 삭제, 4: 변경');
  String selected = stdin.readLineSync();
  if (selected == '1') {
    print('"검색합니다"');
  }
  if (selected == '2') {
    print('"등록합니다"');
  }
  if (selected == '3') {
    print('"삭제합니다"');
  }
  if (selected == '4') {
    print('"변경합니다"');
  }
}






