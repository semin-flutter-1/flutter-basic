void main() {
  Hero hero = Hero();   // 인스턴스를 생성
  hero.name = '슈퍼맨';
  hero.hp = 100;

  Hero hero2 = Hero();   // 인스턴스를 생성
  hero2.name = '배트맨';
  hero2.hp = 50;

  hero.attack();

  print(hero.name);
}

// Hero 타입을 새로 작성
class Hero {
  // field, global variable, 전역변수
  String name;
  int hp = 50;

  void attack() {
    // local variable, 지역변수
    hp = 100;
    print('공격!!!!');
  }

  void run() {}
}
