void main() {
  List<String> nomes = ["Texeira"];

  //metodos em cadeia
  List<String> mod = nomes
    ..add('Bruno')
    ..add('Silva')
    ..remove("Texeira");
  print(mod);

  nomes
    ..add('Hebert')
    ..add('Richards')
    ..remove('Silva');
  print(nomes);
  funcao(nomes);
}

List<String> funcao(List<String> lista) {
  return lista
    ..add('Lucas')
    ..add('Canecas');
}
