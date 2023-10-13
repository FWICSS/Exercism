class MatchingBrackets {
  // Put your code here
  bool isPaired(String input) {
    final Map<String, String> matching = {'{': '}', '(': ')', '[': ']'};
    final List<String> stack = [];

    for (var i = 0; i < input.length; i++) {
      final String char = input[i];
      if (matching.keys.contains(char)) {
        stack.add(char);
      } else if (matching.values.contains(char)) {
        if (stack.isEmpty || matching[stack.removeLast()] != char) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}
