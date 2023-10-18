class Triangle {
  // Put your code here
  bool equilateral(double a, double b, double c) {
    if (a == b && b == c && a != 0) {
      return true;
    } else {
      return false;
    }
  }

  bool isosceles(double a, double b, double c) {
    return ((a == b || b == c || a == c) && a != 0);
  }

  bool scalene(double a, double b, double c) {
    if (a != b && b != c && a != c && a != 0) {
      return true;
    } else {
      return false;
    }
  }
}
