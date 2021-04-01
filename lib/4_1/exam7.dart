import 'dart:io';

void main() {
  // 입력
  List<int> inputs = [];
  for (int i = 0; i < 5; i++) {
    inputs.add(int.parse(stdin.readLineSync()));
  }

  // 출력
  for (int i = 1; i < 5; i++) {
    print(inputs[i] - inputs[i - 1]);
  }
}

