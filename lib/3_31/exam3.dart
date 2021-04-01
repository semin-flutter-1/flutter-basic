void main() {
  // for (int dan = 2; dan <= 9; dan++) {
  //   for (int j = 1; j <= 9; j++) {
  //     print('$dan * $j = ${dan * j}');
  //   }
  // }

  // 1 ~ 5 의 합을 구하자
  int result = 0;
  for (int i = 1; i <= 5; i++) {
    result += i;
  }
  // print(result);

  // print([1, 2, 3, 4, 5].reduce((value, element) => value + element));

  var list = [1, 2, 3, 4, 5];
  // for (int i = 0; i < list.length; i++) {
  //   if (list[i] % 2 == 0) {
  //     print('${i + 1}일');
  //   }
  // }


  // ['1일', 2, 3, 4, 5]
  // list.map((e) => '$e일').forEach((e) => print(e));
  list.map((e) {
    if (e % 2 == 0) {
      return '$e일';
    } else {
      return e;
    }
  }).forEach(print);

}

