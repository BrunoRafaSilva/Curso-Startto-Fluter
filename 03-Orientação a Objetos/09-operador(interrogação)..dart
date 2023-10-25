void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Bruno', idade: 24);
  print(pessoa1.idade);

  Pessoa? pessoa2 = Pessoa(nome:'Bruno', idade:27);
  print(pessoa2?.nome);// ele imprime null, se for nulo sem quebrar a aplicação.
  pessoa2?.comer();
  print(pessoa2?.cidade?.toUpperCase());
  
}


class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  String? cidade;

  void comer(){
    print('comendo...');
  }
}