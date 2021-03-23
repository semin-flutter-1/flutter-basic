import 'dart:io';

// 메인 함수
void main() {
  q4();
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






