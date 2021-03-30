// 정수 N을 입력받아 * 을 N 개만큼 출력하시오
// 예1)
// 4
// ****
//
// 6
// ******
import 'dart:io';

void main() {
  solution(3);
  print('');
  solution(6);
  print('');
  solution(4);
  print('');
}

String solution(int input) {
  for (int i = 0; i < input; i++) {
    stdout.write('*');
  }
}