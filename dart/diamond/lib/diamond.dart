class Diamond {
  List<String> rows(String letter) {
    var char = letter.codeUnitAt(0);
    var diamond = <String>[];
    var middleSpaces = 1;
    for (var currentChar = 65; currentChar <= char; currentChar++) {
      var leadingSpaces = ' ' * (char - currentChar);
      var innerSpaces = ' ' * (middleSpaces);
      if (currentChar == 65) {
        diamond.add(
            '$leadingSpaces${String.fromCharCode(currentChar)}$leadingSpaces');
      } else {
        diamond.add(
            '$leadingSpaces${String.fromCharCode(currentChar)}$innerSpaces${String.fromCharCode(currentChar)}$leadingSpaces');
        middleSpaces += 2;
      }
    }
    middleSpaces -= 4;
    for (var currentChar = char - 1; currentChar >= 65; currentChar--) {
      var leadingSpaces = ' ' * (char - currentChar);
      if (currentChar == 65) {
        diamond.add(
            '$leadingSpaces${String.fromCharCode(currentChar)}$leadingSpaces');
      } else {
        var innerSpaces = ' ' * (middleSpaces);
        middleSpaces -= 2;
        diamond.add(
            '$leadingSpaces${String.fromCharCode(currentChar)}$innerSpaces${String.fromCharCode(currentChar)}$leadingSpaces');
      }
    }
    return diamond;
  }
}
