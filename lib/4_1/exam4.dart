import 'dart:io';

void main() {
  int input = int.parse(stdin.readLineSync());

  Exam exam = Exam();

  print(exam.solution(input));

}

class Exam {
  String solution(int n) {
    String result = 'rainy';

    if (n <= 30) {
      result = 'sunny';
    } else if (n <= 70) {
      result = 'cloudy';
    }

    return result;
  }
}