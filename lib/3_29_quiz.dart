void main() {
  Word word = Word('abcdefg');

  print(!true);

  print(word.isVowel(0)); // true
  print(word.isVowel(1)); // false
  print(word.isVowel(2)); // false
  print(word.isVowel(3)); // false
  print(word.isVowel(4)); // true
}

class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true  // a, i, u, e, o
  bool isVowel(int i) => 'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());

  bool isConsonant(int i) => !'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());
}
