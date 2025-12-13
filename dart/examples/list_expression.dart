void main() {
  print([
    for (var i = 0; i <= 10; i++)
      if (i % 3 == 1) 2 * i,
  ]);
}
