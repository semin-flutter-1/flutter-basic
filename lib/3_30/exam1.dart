// 정수 N을 입력받아 * 을 N 개만큼 출력하시오
// 예1)
// 4
// ****
//
// 6
// ******

void main() {
  Exam exam = Exam();
  print(exam.solution(3));
  print(exam.solution(6));
  print(exam.solution(2));
}

class Exam {
  String solution(int input) {
    String result = '';
    for (int i = 0; i < input; i++) {
      result = result + '*';
    }
    return result;
  }
}
