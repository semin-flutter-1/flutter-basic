void main() {
  // 숫자인지???

  // 이메일 주소 검사
  // 주민번호 검사
  // 카드번호 검사
  // ip 어드레스 검사

  RegExp regExp = RegExp('^[0-9]*\$');
  print(regExp.hasMatch('1234'));
  print(regExp.hasMatch('123A'));
}