class PrimeFactors {
  // Put your code here
  List<int>? factors(int number) {
    List<int> result = [];
    int divisor = 2;
    while (number > 1) {
      while (number % divisor == 0) {
        print("divisor: $divisor");
        print(number % divisor);
        result.add(divisor);
        print(number);
        number ~/= divisor;
        print(number);
      }
      divisor++;
    }
    return result;
  }
}
