void main() {
  var list = [1, 2, 3, 4, 5];

  var copy1 = list;
  copy1[0] = 100;
  copy1.add(10);

  var copy2 = [...list];

  print("Original $list");
  print("Copy $copy1");

  copy2[3] = 900;

  print("Original $list");
  print("Copy $copy2");
}
