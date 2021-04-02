import 'dart:io';

void main() {
  String s = stdin.readLineSync();

  if (s.length >= 11) {
    print('OK');
  } else {
    print(11 - s.length);
  }
}