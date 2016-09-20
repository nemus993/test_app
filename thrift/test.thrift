struct Number {
  1: double sum;
}
service Test {
  Number add_two_numbers(1: double a, 2: double b);
}
