

void main() {
  Exam exam = Exam();

  print(exam.solution('PAIZA'));
  print(exam.solution('PAIZA'));
}

class Exam {

  int solution(String s) {
    return s.length - s.replaceAll('A', '').length;
  }
}