import 'package:flutter_app/character/cleric.dart';
import 'package:flutter_app/character/hero.dart';
import 'package:flutter_app/equipment/sword.dart';

void main() {
  // 생성자를 통한 초기화
  // 홍길동 영웅 생성
  Hero hero = Hero('홍길동', 50);
  Hero hero2 = Hero('배트맨', 50);

  // 공동 재산 사용
  Hero.money = Hero.money - 10;

  // 불의검을 생성
  Sword sword = Sword('불의검', 100, 500, '불을 내뿜는다');

  // 홍길동한테 불의검 주기
  hero.sword = sword;
  // 홍길동이 공격
  hero.attack();

  // 더 이상 이름, hp 설정을 할 수 없다.
  // 버그를 줄이기 위해서, (사람이 실수하는 것을 막기 위해)



}