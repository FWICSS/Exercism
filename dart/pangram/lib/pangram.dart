class Pangram {
  bool isPangram(String input) {
    var letters =
        input.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '').split('');
    var uniqueLetters = letters.toSet();
    return uniqueLetters.length == 26;
  }
}
