class Bob {
  String response(String input) {
    if (input.trim().isEmpty) {
      return 'Fine. Be that way!';
    } else if (input == input.toUpperCase() &&
        input.contains(RegExp(r'[A-Z]'))) {
      if (input.trim().endsWith('?')) {
        return 'Calm down, I know what I\'m doing!';
      } else {
        return 'Whoa, chill out!';
      }
    } else if (input.trim().endsWith('?')) {
      return 'Sure.';
    } else {
      return 'Whatever.';
    }
  }
}
