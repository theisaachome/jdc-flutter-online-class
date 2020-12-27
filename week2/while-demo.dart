void main() {
  int i = 1;
  while (i <= 15) {
    i++;
  }

  for (var i = 0; i <= 15; i++) {
    if (i % 3 == 0) {
      print("Fizz");
      continue;
    }
    if (i % 5 == 0) {
      print("Buzz");
      continue;
    }
    print("Done");
  }

  
}
