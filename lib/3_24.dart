// List

void main() {
  List<int> scores = [100, 50, 70, 30];

  int sum = total(scores);
  double average = avg(scores);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
}

int total(List<int> scores) {
  int result = 0;
  // 반복문
  for (int i = 0; i < scores.length; i++) {
    result = result + scores[i];
  }
  return result;
}

double avg(List<int> scores) {
  return total(scores) / scores.length;
}

void listExam() {
  List<int> scores = [100, 50, 70, 30];

  // 맨 뒤에 30 추가
  scores.add(40); // 100, 50, 70, 30, 40

  // 40을 뺀다
  scores.remove(40); // 100, 50, 70, 30

  // 3번 인덱스의 값 삭제
  scores.removeAt(3); // 100, 50, 70

  // 맨 앞에것 삭제
  scores.removeAt(0); // 50, 70

  // 0번째에 35 추가
  scores.insert(0, 35); // 35, 50, 70

  // 모두 삭제
  scores.clear(); // 아무것도 없음

  // 뒤에다가 리스트를 붙인다
  scores.addAll([10, 20, 30]);  // 10, 20, 30

}