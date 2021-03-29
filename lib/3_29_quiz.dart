void main() {
  Word dish = Word('dish');
  print(dish.toPlural()); // dishes

  Word cherry = Word('cherry');
  print(cherry.toPlural()); // cherries

  Word clock = Word('clock');
  print(clock.toPlural()); // clocks
}

class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true  // a, i, u, e, o
  bool isVowel(int i) => 'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());

  // 자음
  bool isConsonant(int i) => !'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());

  // 복수형으로 변환
  String toPlural() {
    return '${letters}s';
  }

}
