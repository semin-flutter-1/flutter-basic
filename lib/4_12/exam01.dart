import 'dart:io';

void main() {
  String input = stdin.readLineSync();

  var winners = {}; // 빈 Map

  for (int i = 0; i < input.length; i++) {
    for (int j = 0; j < input.length; j++) {
      if (input[i] == '1' && input[j] == '3') {
        winners[i] = true;
        //winners = {
        //     0: true,
        //   }
      } else if (input[i] == '2' && input[j] == '1') {
        winners[i] = true;
      } else if (input[i] == '3' && input[j] == '2') {
        winners[i] = true;
      }
    }
  }

  print(winners.length);
}