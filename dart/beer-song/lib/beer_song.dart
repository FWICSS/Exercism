class BeerSong {
  List<String> recite(int start, int take) {
    List<String> result = [];
    for (int i = 0; i < take; i++) {
      if (start == 0) {
        result.add(
            "No more bottles of beer on the wall, no more bottles of beer.\n"
            "Go to the store and buy some more, 99 bottles of beer on the wall.");
      } else if (start == 1) {
        result.add("1 bottle of beer on the wall, 1 bottle of beer.\n"
            "Take it down and pass it around, no more bottles of beer on the wall.");
      } else if (start == 2) {
        result.add("2 bottles of beer on the wall, 2 bottles of beer.\n"
            "Take one down and pass it around, 1 bottle of beer on the wall.");
      } else {
        result.add(
            "$start bottles of beer on the wall, $start bottles of beer.\n"
            "Take one down and pass it around, ${start - 1} bottles of beer on the wall.");
      }
      if (i != take - 1) {
        result.add("\n" "" "");
      }
      start--;
    }
    return result;
  }
}

void main() {
  print(BeerSong().recite(99, 2));
}
