import 'dart:io';

void main() {
  // 입력이 한 줄로 들어올 때
  // 1 2 3 4 5
  List<String> oneLine = stdin.readLineSync().split(' ');

  // 1 2 3 4 5
  List<int> oneLine2 = stdin.readLineSync().split(' ').map((e) => int.parse(e));

  // 여러줄로 입력할 때
  /// 1
  /// 2
  /// 3
  /// 4
  /// 5
  List<String> inputs = [];
  for (int i = 0; i < 5; i++) {
    inputs.add(stdin.readLineSync());
  }

  // 출력
  /// 1
  /// 2
  /// 3
  /// 4
  /// 5
  for (var input in inputs) {
    print(input);
  }

  // 1 2 3 4 5
  String result = '';
  for (var input in inputs) {
    result += '$input ';
  }
  print(result);
}