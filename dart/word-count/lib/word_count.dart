class WordCount {
  Map<String, int> countWords(String input) {
    final result = <String, int>{};

    List<String> mots = input.split(' ');

    // Compte les mots
    print(mots);
    for (var mot in mots) {
      if (mot.isNotEmpty) {
        mot = mot.toLowerCase();
        String premierCaractere = mot[0];
        String dernierCaractere = mot[mot.length - 1];
        while (!premierCaractere.contains(new RegExp(r'[A-Za-z0-9]'))) {
          if (!premierCaractere.contains(new RegExp(r'[A-Za-z0-9]'))) {
            mot = mot.substring(1);
            premierCaractere = mot[0];
          }
        }
        while (!dernierCaractere.contains(new RegExp(r'[A-Za-z0-9]'))) {
          if (!dernierCaractere.contains(new RegExp(r'[A-Za-z0-9]'))) {
            mot = mot.substring(0, mot.length - 1);
            dernierCaractere = mot[mot.length - 1];
          }
        }
        result[mot] = (result[mot] ?? 0) + 1;
      }
    }
    print(result);

    return result;
  }
}

void main() {
  final wordCount = WordCount();
  wordCount.countWords(
      '"That\'s the password: \'PASSWORD 123\'!", cried the Special Agent.\nSo I fled.');
}
