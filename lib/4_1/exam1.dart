// 9
// 12
// 3
// 6
// 10

// 12
// 3

// 1
// 1
// 2
// 2
// 3

// 3
// 1


import 'dart:io';
import 'dart:math' as math;

void main() {
  // 입력 1 ~ 99
  Exam exam = Exam();

  for (int i = 0; i < 5; i++) {
    int input = int.parse(stdin.readLineSync());
    exam.numbers.add(input);
  }

  print(exam.max());
  print(exam.min());
}

class Exam {
  List<int> numbers = [];

  int max() {
    int result = 0;

    for (int i = 0; i < numbers.length; i++) {
      // if (result < numbers[i]) {
      //   result = numbers[i];
      // }
      result = math.max(result, numbers[i]);
    }

    return result;
  }

  int min() {
    int result = 99;

    for (int i = 0; i < numbers.length; i++) {
      // if (result > numbers[i]) {
      //   result = numbers[i];
      // }
      result = math.min(result, numbers[i]);

    }

    return result;
  }
}