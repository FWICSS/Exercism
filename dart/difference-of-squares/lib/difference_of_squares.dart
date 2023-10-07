class DifferenceOfSquares {
  int squareOfSum(int i) {
    int sum = 0;
    for (int i = 1; i < i+1; i++) {
      	sum += i;
    }
    return sum^2;
  }

  int sumOfSquares(int i) {
    int sum = 0;
    for (int i = 1; i < i+1; i++) {
      	sum += i^2;
    }
    return sum;
  }

  int differenceOfSquares(int i) {
    return squareOfSum(i)-sumOfSquares(i);
  }
}
