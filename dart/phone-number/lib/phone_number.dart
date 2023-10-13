class PhoneNumber {
  String clean(String phoneNumber) {
    // Retirer tous les caractères non numériques
    if (phoneNumber.contains(RegExp(r'[a-zA-Z]')))
      throw FormatException('letters not permitted');
    if (phoneNumber.contains(RegExp(r'[!@:;,]')))
      throw FormatException('punctuations not permitted');
    final digits = phoneNumber.replaceAll(RegExp(r'\D'), '');
    if (digits.length == 10 && digits.startsWith("0"))
      throw FormatException('area code cannot start with zero');
    if (digits.length == 10 && digits.startsWith("1"))
      throw FormatException('area code cannot start with one');
    if (digits.length == 10 && digits[3] == "1")
      throw FormatException('exchange code cannot start with one');
    if (digits.length == 10 && digits[3] == "0")
      throw FormatException('exchange code cannot start with zero');
    if (digits.length == 10) return digits;
    if (digits.length == 11 && digits[1] == "0")
      throw FormatException('area code cannot start with zero');
    if (digits.length == 11 && digits[1] == "1")
      throw FormatException('area code cannot start with one');
    if (digits.length == 11 && digits[4] == "0")
      throw FormatException('exchange code cannot start with zero');
    if (digits.length == 11 && digits[4] == "1")
      throw FormatException('exchange code cannot start with one');
    if (digits.length == 11 && !digits.startsWith('1'))
      throw FormatException('11 digits must start with 1');
    if (digits.length == 11 && digits.startsWith('1'))
      return digits.substring(1);
    if (digits.length > 11)
      throw FormatException('must not be greater than 11 digits');

    throw FormatException('must not be fewer than 10 digits');
  }
}
