namespace rb TestApp

struct Number {
  1: double sum;
}
service Test {
  models.Number add_two_numbers(1: double a, 2: double b);
}
