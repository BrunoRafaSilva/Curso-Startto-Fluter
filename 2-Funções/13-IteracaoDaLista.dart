void main() {
  List<String> nomes = [
    'Daniel',
    'Ciolfi',
    'Henrique',
    'Giovana',
    'Marcos',
    'Eliane',
    'Mariane',
  ];

  print(nomes);

  //for (int i = 0; i <= nomes.length - 1; i++) {
  //  print(nomes[i].toUpperCase());
  //}

  //com o sublist eu consigo delimitar
  /*for (String nome in nomes.sublist(2, 4)) {
    print(nome.toUpperCase());
  }
  ;*/

  nomes./*sublist(2).*/forEach((nome) {
    print(nome.toUpperCase());
  });
}
