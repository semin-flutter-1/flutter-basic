import 'dart:math';

void main() {
  print('주사위 : ${dice()}');
}

// 1~10 주사위
int dice10() {
  Random random = Random();
  return random.nextInt(10) + 1;
}
// 1~6 주사위
int dice6() {
  Random random = Random();
  return random.nextInt(6) + 1;
}
// 1~7 주사위
int dice7() {
  Random random = Random();
  return random.nextInt(7) + 1;
}
// 1~8 주사위
int dice8() {
  Random random = Random();
  return random.nextInt(8) + 1;
}
// 1~9 주사위
int dice9() {
  Random random = Random();
  return random.nextInt(9) + 1;
}