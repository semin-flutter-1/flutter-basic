import 'dart:io';

void main() {
  List<String> inputs = stdin.readLineSync().split(' ');

  int N = int.parse(inputs[0]);
  int M = int.parse(inputs[1]);

  // 둘 다 짝수거나 둘 다 홀수거
  if ((N.isEven && M.isEven) || (N.isOdd && M.isOdd)) {
    print('NO');
  } else {
    print('YES');
  }
}