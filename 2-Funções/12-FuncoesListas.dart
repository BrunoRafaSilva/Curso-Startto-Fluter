void main() {
  List<int> idades = [5, 41, 75, 78, 96];

  List<int> outrasIdades = [15, 18, 25];
  //adiciona listas
  idades.addAll(outrasIdades);

  print(idades);

  //insiro o elemento em uma posição especifica o primeiro parametro daz isso
  idades.insert(2, 32);
  print(idades);

  //procurar elemento na lista;
  print(idades.contains(32));
  //descobrir posição na lista
  print(idades.indexOf(32));

  //remover item da lista
  print(idades.remove(32));
  //remover por posição e printa qual ele removeu
  print(idades.removeAt(3));

  //embaralha os itens
  //idades.shuffle();

  //limpar a lista
  //idades.clear();

  print(idades);
}
