class Acronym {
  // Put your code here
  String abbreviate(String phrase) {
    RegExp regExp = RegExp(r"[A-Z]+[a-z]*|[a-z]+");
    Iterable<RegExpMatch> matches = regExp.allMatches(phrase);
    String acronym = '';
    for (RegExpMatch match in matches) {
      acronym += match.group(0)![0].toUpperCase();
    }
    return acronym;
  }
}
