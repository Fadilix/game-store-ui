import 'dart:math';

shuffleArray(List array) {
  return array.shuffle();
}

generateRandomPrice() {
  int price = Random().nextInt(700) + 20;
  return price.toDouble();
}
