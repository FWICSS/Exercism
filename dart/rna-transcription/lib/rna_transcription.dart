class RnaTranscription {
  // Put your code here
  String toRna(String dna) {
    String rna = '';
    for (int i = 0; i < dna.length; i++) {
      if (dna[i] == 'C') {
        rna += 'G';
      } else if (dna[i] == 'G') {
        rna += 'C';
      } else if (dna[i] == 'T') {
        rna += 'A';
      } else if (dna[i] == 'A') {
        rna += 'U';
      }
    }
    return rna;
  }
}
