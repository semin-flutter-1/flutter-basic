import 'dart:io';

void main() {
  String E = stdin.readLineSync();

  int ten = E.length - E.replaceAll('<', '').length;
  int one = E.length - E.replaceAll('/', '').length;

  print(ten * 10 + one);
}