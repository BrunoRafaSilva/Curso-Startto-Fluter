void main() {
  var nome = 'Bruno';
  nome = 'Silva';
  // nome a variavel não pode ser alterada para outro tipo
  print(nome);

  var idade = 40;
  idade = 23;
  print(idade);

  //muda pra tudo
  dynamic variavel = 'bruno';
  variavel = false;
  print(variavel);

  //assume qualquer tipo de numero
  num numero = 1.4;
  numero = 5;
  print(numero);
}

void funcao(num numero) {}
