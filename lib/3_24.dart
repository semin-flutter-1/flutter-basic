// List

void main() {
  List<int> scores = [100, 50, 70, 30];

  int sum = total(scores[0], scores[1], scores[2], scores[3]);
  double average = avg(scores[0], scores[1], scores[2], scores[3]);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
}

int total(int korean, int math, int english, int science) {
  return korean + math + english + science;
}

double avg(int korean, int math, int english, int science) {
  return total(korean, math, english, science) / 4;
}