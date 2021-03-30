// 1 1 1
// ABA
//
// 5 7 5
// AAAAABBBBBBBAAAAA

void main() {
  Exam exam = Exam();
  print(exam.solution(1, 1, 1));
  print(exam.solution(5, 7, 5));
}

class Exam {
  String solution(int L, int M, int N) {
    String result = '';

    for (int i = 0; i < L; i++) {
      result = result + 'A';
    }

    for (int i = 0; i < M; i++) {
      result = result + 'B';
    }

    for (int i = 0; i < N; i++) {
      result = result + 'A';
    }

    return result;
  }
}
