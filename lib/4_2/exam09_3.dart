import 'dart:io';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');

  int H = int.parse(inputLine[0]);
  int W = int.parse(inputLine[1]);

  Image image = Image(H, W);

  for (int i = 0; i < H; i++) {
    // 한줄의 픽셀들
    List<Pixel> inputLine = stdin.readLineSync().split(' ').map((e) => Pixel(int.parse(e))).toList();
    Row row = Row();
    row.pixels = inputLine;

    // 한줄을 이미지 정보에 추가
    image.rows.add(row);
  }

  print(image.print());

}

class Image {
  int H;
  int W;

  List<Row> rows = [];

  Image(this.H, this.W);

  String print() {
    String result = '';
    for (var row in rows) {
      result += '${row.print()}\n';
    }
    return result;
  }

}

class Row {
  List<Pixel> pixels = [];

  String print() {
    String result = '';
    for (var pixel in pixels) {
      result += '${pixel.print()} ';
    }
    return result.trim();
  }
}

class Pixel {
  int value;

  Pixel(this.value);

  String print() {
    if (value >= 128) {
      return '1';
    }
    return '0';
  }
}

