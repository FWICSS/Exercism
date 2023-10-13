class NthPrime {
  // Put your code here
  int prime(int n) {
    if (n < 1) {
      throw ArgumentError('Invalid argument(s): There is no zeroth prime');
    }

    List<int> primes = [2];
    int currentNumber = 3;

    while (primes.length < n) {
      bool isPrime = true;
      for (int prime in primes) {
        if (currentNumber % prime == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        primes.add(currentNumber);
      }
      currentNumber += 2; // Évite les nombres pairs suivants
    }

    return primes.last;
  }
}

void main() {
  final nthPrime = NthPrime();
  print(nthPrime.prime(6)); // Cela devrait imprimer 13
}
