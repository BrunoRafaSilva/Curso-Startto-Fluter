void main() {
  //objeto Pessoa criado dentro da variavel pessoa1
  Pessoa pessoa1 = Pessoa();
  //definindo atributos
  pessoa1.nome = 'Bruno';
  pessoa1.idade = 24;
  print(pessoa1.nome);
  print(pessoa1.idade);

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Daniel';
  pessoa2.idade = 40;
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);
}

//classe
class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;
}
