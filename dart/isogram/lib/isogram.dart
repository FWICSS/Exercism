class Isogram {
  bool isIsogram(String str) {
    var lowerCaseString = str.toLowerCase();
    var letters = lowerCaseString.replaceAll(RegExp(r'[^a-z]'), '');
    return letters.split('').toSet().length == letters.length;
  }
}
