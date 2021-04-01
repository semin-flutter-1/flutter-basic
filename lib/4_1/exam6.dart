import 'dart:io';

void main() {
  int percentage = int.parse(stdin.readLineSync());
  Exam exam = Exam(percentage);
  print(exam.solution());
  print(exam.solution());
}

class Exam {
  int a;

  Exam(this.a);

  String solution() {
    String result;
    if (0 <= a && a <= 30) {
      result = 'sunny';
    } else if (a >= 31 && a <= 70) {
      result = 'cloudy';
    } else {
      result = 'rainy';
    }
    return result;
  }
}
