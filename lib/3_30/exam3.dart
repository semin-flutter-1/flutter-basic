// A 가 몇개인지??
//
// PAIZA
// 2
//
// aAaAaAa
// 3
void main() {
  Exam exam = Exam();
  print(exam.solution('PAIZA'));
  print(exam.solution('aAaAaAa'));
}

class Exam {
  int solution(String s) {
    int result = 0;

    for (int i = 0; i < s.length; i++) {
      if (s.substring(i, i + 1) == 'A') {
        result++;
      }
    }

    return result;
  }
}
