void main() {
  String nome = funcao();
  print(nome);
  print(funcao2(2));

  String nome2 = funcao3(2) ?? 'não informado';//se retornado null ele retorna o padrão 'nao informado'
  print(nome2);
}

String funcao() => 'Daniel'.toUpperCase();
/*String funcao() {
  return 'Daniel';
}*/
//arrow function do dart

String funcao2(int x) {
  if (x > 10) {
    return 'Olá Mundo';
  } else {
    return 'Se não tiver `else` ele quebraria, pois retorna null e não pode';
  }
}

String? funcao3(int x) {
  if (x > 10) {
    return 'Olá Mundo';
  }
  return null; //aqui já pode ter o valor nulo
}
