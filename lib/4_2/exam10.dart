import 'dart:io';

void main() {
  int M = int.parse(stdin.readLineSync());

  List<String> ipAddresses = [];
  for (int i = 0; i < M; i++) {
    ipAddresses.add(stdin.readLineSync());
  }

  RegExp regExp = RegExp('^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\$');


  for (int i = 0; i < M; i++) {
    if (regExp.hasMatch(ipAddresses[i])) {
      print('True');
    } else {
      print('False');
    }
  }


}