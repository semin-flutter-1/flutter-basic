import 'dart:io';

void main() {
  // 1 5 15 27 28
  List<String> inputNumberList = [];
  for (int i = 0; i < 5; i++) {
    inputNumberList.add(stdin.readLineSync());
  }
  Exam exam = Exam();

  List<int> answers = exam.solution(inputNumberList);

  for (int answer in answers) {
    print(answer);
  }
}

class Exam {
  List<int> solution(List<String> x) {
    List<int> resultList = [];
    for (int i = 0; i < 4; i++) {
      int result = int.parse(x[i + 1]) - int.parse(x[i]);
      resultList.add(result);
    }
    return resultList;
  }
}
