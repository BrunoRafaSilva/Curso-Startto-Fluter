void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Bruno', idade: 24);
  print(pessoa1.idade);

  Pessoa pessoa2 = pessoa1;
  print(pessoa2.nome);

  //fazendo um a copia do outro eu literalmente transformo um em copia do outro ao decorrer do código.
  pessoa1.nome = 'Henrique';
  print(pessoa2.nome);

  funcao(pessoa1);
  print(pessoa1.idade);

  int numero = 10;
  funcao2(numero);
  print(numero);
}

// quando se passa um objeto por parametro não se está duplicando, está alterando o endereço
void funcao(Pessoa pessoa) {
  pessoa.idade++;
}

//essa variavel é chamado de primitiva, pois ela não aponta para um objeto
void funcao2(int x){
  x=20;
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
}
