// List

void main() {
  int kor = 100;
  int math = 50;
  int english = 70;

  int sum = total(kor, math, english);
  double average = avg(kor, math, english);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
}

int total(int korean, int math, int english) {
  return korean + math + english;
}

double avg(int korean, int math, int english) {
  return (korean + math + english) / 3;
}