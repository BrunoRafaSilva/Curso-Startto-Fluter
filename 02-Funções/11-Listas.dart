void main() {
  List<dynamic> nomes = ['Bruno', 'Silva', 28, false, 'Nathalia'];

  print(nomes);

  List<String> soNomes = ['Bruno', 'Silva'];
  print(soNomes.length);

  List<int> idades = [52, 32, 63, 58];
  print(idades.first);
  print(idades[3]);
  idades.add(9);
  print(idades[4]);
}
