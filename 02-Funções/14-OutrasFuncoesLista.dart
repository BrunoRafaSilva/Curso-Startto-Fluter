void main() {
  List<int> maluca = List.filled(100, 8);
  //filled é um construtores
  print(maluca);

  List<int> doida = List.generate(10, funcao);
  print(doida);

  List<int> doidaAnonima = List.generate(10, (i) => i * 10);
  print(doidaAnonima);

  print(doida.isEmpty);
  print(doida.isNotEmpty);

  doida.removeAt(0);
  //ver se tem um multiplo de 10
  print(doida.any((i) => i % 20 == 0));
  print(doida);

  //multiplo de 40
  print(doida.firstWhere((i) => i % 40 == 0));
  //ultimo item multiplo
  print(doida.lastWhere((i) => i % 40 == 0));
  print('/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/');

  //retorna todos os resultados da condição
  print(doida.where((i) => i % 20 == 0));

  //gera uma nova lista com dados incrementados
  print(doida.map((i) => i + 1 ));
}

int funcao(int pos) {
  return pos * 10;
  //return 10;
}
