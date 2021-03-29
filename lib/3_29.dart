void main() {
  // Sort
  List<int> numbers = [3, 5, 1, 2, 6, 9, 8];

  List<String> strings = ['aa', 'ab', 'e'];
  strings.sort();
  print(strings);

  // 리턴을 안 한다. : 객체 자체가 변경될 것이다
  numbers.sort();   // 오름차순으로 정렬
  print(numbers);   // 1, 2, 3, ~

  // 리턴을 하고 있다 : 객체의 상태가 불편
  // 반복되는 타입 => Iterable
  List<int> reveredNumbers = numbers.reversed.toList();

  List<int> result2 = numbers.reversed.toList();
  print(result2);

  print(reveredNumbers);

  // 문자열 잘라내기
  String str = 'abcdefg';
  print(str == 'abc');  // true
  print(str.substring(1));    // bcdefg
  print(str.substring(1, 2));    // end - start : 갯수 b
  print(str.substring(2, 6)); // cdef

  print(str + 'hijk');
  print('${str}hijk');

  String str2 = 'abcd';
  print(str2.isEmpty);
  print(str2.length == 0);

  print(str.contains('de')); // 포함
  print(str.toLowerCase());   // 소문자로
  print(str.toUpperCase());   // 대문자로

  print(str); // 소? 대?

  String temp = str2.replaceAll('a', 'A');

  print(str2.replaceAll('a', 'A').replaceAll('b', 'B'));   // ABcd
  print(str2.replaceAll('ab', 'ZZ')); // ZZcd

  print(str2.startsWith('ab'));  // 앞에 ab로 시작하면 true
  print(str2.startsWith('bb'));  // 앞에 bb로 시작하면 false

  print(str2.endsWith('d'));  // 끝에 d로 끝나면 true

  print(str2.indexOf('c'));   // 2 : 몇 번째 인덱스인지
  print('   abcd    '.trim()); // 좌우 공백 제거

  // 뒤에서 두 글자
  String str3 = 'dish'; // 3
  print(str3.substring(str3.length - 2, str3.length));
}