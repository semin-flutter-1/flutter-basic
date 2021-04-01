import 'dart:io';

void main() {
  List<String> name = stdin.readLineSync().split(' ');

  print('${name[0][0]}.${name[1][0]}');
}