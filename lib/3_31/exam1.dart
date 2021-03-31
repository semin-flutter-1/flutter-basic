import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');
  int a = int.parse(inputLine[0]);
  int b = int.parse(inputLine[1]);
  int R = int.parse(inputLine[2]);

  Gongsajang gongsajang = Gongsajang(a, b, R);

  Park park = Park();

  int N = int.parse(stdin.readLineSync());

  for (int i = 0; i < N; i++) {
    List<String> inputLine = stdin.readLineSync().split(' ');
    int x = int.parse(inputLine[0]);
    int y = int.parse(inputLine[1]);
    // 나무를 생성
    // 시끄러운지 판단해서 출력

    Tree tree = Tree(x, y);
    park.trees.add(tree);
  }

  // print
  for (Tree tree in park.trees) {
    if (gongsajang.isNoisy(tree)) {
      print('noisy');
    } else {
      print('silent');
    }
  }
}

class Tree {
  int x;
  int y;

  Tree(this.x, this.y);
}

class Gongsajang {
  int a;
  int b;
  int R;

  Gongsajang(this.a, this.b, this.R);

  bool isNoisy(Tree tree) {
    if ((tree.x - a) * (tree.x - a) + (tree.y - b) * (tree.y - b) >= R * R) {
      return false;
    }
    return true;
  }
}

class Park {
  List<Tree> trees = [];
}

// 20 10 10
// 3
// 25 10
// 20 15
// 70 70
