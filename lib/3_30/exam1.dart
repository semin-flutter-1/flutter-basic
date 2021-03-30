// 정수 N을 입력받아 * 을 N 개만큼 출력하시오
// 예1)
// 4
// ****
//
// 6
// ******
import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync());  // 3

  for (int i = 0; i < N; i++) {
    stdout.write('*');
  }
}