import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');

  List<int> inputs = [];

  for (int i = 0; i < 4; i++) {
    inputs.add(int.parse(inputLine[i]));
  }

  inputs.sort();

  // 9 2 3 8
  // 2 3 8 9
  // 92 + 83
  // 82 + 93
  print((inputs[3] * 10 + inputs[1]) + (inputs[2] * 10 + inputs[0]));
}