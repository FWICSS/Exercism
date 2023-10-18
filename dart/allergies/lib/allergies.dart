class Allergies {
  Map<AllergiesEnum, int> allergiesMap = {
    AllergiesEnum.eggs: 1,
    AllergiesEnum.peanuts: 2,
    AllergiesEnum.shellfish: 4,
    AllergiesEnum.strawberries: 8,
    AllergiesEnum.tomatoes: 16,
    AllergiesEnum.chocolate: 32,
    AllergiesEnum.pollen: 64,
    AllergiesEnum.cats: 128,
  };

  bool allergicTo(String allergen, int score) {
    AllergiesEnum allergenEnum = _getEnumFromName(allergen);
    if (score & allergiesMap[allergenEnum]! != 0) {
      return true;
    }
    return false;
  }

  AllergiesEnum _getEnumFromName(String name) {
    return AllergiesEnum.values
        .firstWhere((e) => e.toString() == 'AllergiesEnum.$name');
  }

  List<String> list(int score) {
    List<String> result = [];
    for (var entry in allergiesMap.entries) {
      if (score & entry.value != 0) {
        result.add(_getNameFromEnum(entry.key));
      }
    }
    return result;
  }

  String _getNameFromEnum(AllergiesEnum enumValue) {
    return enumValue.toString().split('.').last;
  }
}

enum AllergiesEnum {
  eggs,
  peanuts,
  shellfish,
  strawberries,
  tomatoes,
  chocolate,
  pollen,
  cats
}
