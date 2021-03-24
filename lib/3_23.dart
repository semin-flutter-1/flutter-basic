import 'dart:io';
import 'dart:math';

void main() {
  // 파라미터는 뭐지?? => String 3개 (제목, 주소, 본문)
  email(title: '안녕하세요',
      address: 'abc@abc.com',
      text: '냉무');

  email(address: 'abc@abc.com', text: '냉무');

  // print(calcTriangleArea(10, 5));
  //
  // double result = calcTriangleArea(20, 30);
  print('반지름을 입력하세요');
  double radius = double.parse(stdin.readLineSync());
  print('반지름이 $radius인 원의 넓이는 ${calcCircleArea(radius)}');


}

// PI * R ^ 2
double calcCircleArea(double radius) {
  return pi * radius * radius;
}

double calcTriangleArea(double bottom, double height) {
  double result = bottom * height / 2;
  return result;
}

double calcTriangleArea2(double bottom, double height) {
  return bottom * height / 2;
}

double calcTriangleArea3(double bottom, double height)
  => bottom * height / 2;

void email({String title, String address, String text}) {
  // title 인자로 들어온 값은 뭐야?
  print('$address 에 아래의 메일을 송신한다. ');
  print('제목 : $title');
  print('본문 : $text');
}

// 정수 num 하나를 받아서 정수 1 ~ num 를 반환한다
// && 그리고, || 또는
// 매개변수를 {} 로 감싸면 선택적으로 매개변수를 선택할 수 있게 된다. (선택적 파라미터)
int dice(int start, int end) {
  return Random().nextInt(end - start + 1) + start;
}

// 함수의 내용이 한 줄일 경우에는 다음과 같이 줄여서 쓸 수 있다. (람다식 lambda expression)
// num : 파라미터, parameter, 매개변수
int dice2(int num) => Random().nextInt(num) + 1;

