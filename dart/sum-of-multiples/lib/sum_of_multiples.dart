class SumOfMultiples {
  int sum(List<int> multiples, int max) {
    var sum = 0;
    Set<int> multiplesSet = Set<int>();
    for (var i = 1; i < max; i++) {
      for (var multiple in multiples) {
        if (i % multiple == 0) {
          multiplesSet.add(i);
          break;
        }
      }
    }
    print(multiplesSet);
    for (var multiple in multiplesSet) {
      sum += multiple;
    }
    return sum;
  }
}

void main() {
  final sumOfMultiples = SumOfMultiples();
  print(sumOfMultiples.sum(<int>[3, 5], 1));
  print(sumOfMultiples.sum(<int>[3, 5], 4));
  print(sumOfMultiples.sum(<int>[3], 7));
  print(sumOfMultiples.sum(<int>[3, 5], 10));
  print(sumOfMultiples.sum(<int>[3, 5], 100));
  print(sumOfMultiples.sum(<int>[3, 5], 1000));
  print(sumOfMultiples.sum(<int>[7, 13, 17], 20));
  print(sumOfMultiples.sum(<int>[4, 6], 15));
  print(sumOfMultiples.sum(<int>[5, 6, 8], 150));
  print(sumOfMultiples.sum(<int>[5, 25], 51));
  print(sumOfMultiples.sum(<int>[43, 47], 10000));
}
