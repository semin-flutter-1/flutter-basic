import 'dart:math';

void main() {
  print('주사위 : ${dice(6)}');
}

// 정수 num 하나를 받아서 정수 1 ~ num 를 반환한다
int dice(int num) {
  Random random = Random();
  return random.nextInt(num) + 1;
}