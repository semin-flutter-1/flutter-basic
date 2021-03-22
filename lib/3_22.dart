// main 메서드 또는 함수라고 부름
void main() {
  // 잘못된 이름
  int a = 10;
  int b = 20;
  var e = 10;

  // 잘 된 이름 (camel case (낙타형)
  int myAge = 10; // 나이
  int brotherAge = 20; // 형 나이

  // snake case (뱀형)
  int my_age = 10;
  int brother_age = 20; // 형 나이

  // [숫자]
  // int d = 5.5;   // 이건 에러
  double c = 10.5; // 실수(소수점)
  var f = 10.5;

  // [문자열]
  String name = '홍길동';
  var name2 = '한석봉';

  // [진위 (참, 거짓)]
  bool isMarried = true; // 결혼했다
  isMarried = false; // 결혼 안 했다

  // 숫자 목록
  List<int> ageList = [10, 20, 30];
  var ageList2 = [10, 20, 30];

  // 문자열 목록
  List<String> nameList = ['홍길동', '한석봉'];
  var nameList2 = ['홍길동', '한석봉'];

  // null (값이 없다)
  int g;      // null
  g = 10;   // null이 아니고 10

  String name3 = '';    // 아무것도 없는 0개의 문자
  String name4;         // null


  double tax = 1.1;   // 세금
  int fax = 5;  // 팩스 가격 (5.5)
  print('5만원짜리를 4만원으로 할인합니다.');
  fax = 4;
  print('팩스의 새로운 가격은(세금포함) ${fax * tax}만원!');
  // 4.4
}












