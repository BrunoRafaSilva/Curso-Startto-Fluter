void main() {
  //objeto Pessoa criado dentro da variavel pessoa1
  Pessoa pessoa1 = Pessoa(nome: 'Bruno', idade: 24);

  Pessoa pessoa2 = Pessoa(nome: 'Daniel', idade: 29, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 6516;

  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);
}

//classe
class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando o $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado = false;

  // undersocre acredita que o campo é privado
  double? _dinheiro;

  //funções dentro de classes se chamam metodo
  int? aniversario() {
    print('Parabéns $nome');
    // "!" garante que nao será nulo
    idade++;
    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }

  //criando setter, setando valor em atributo privado
  set dinheiro(double? valor) {
    if (valor != null && valor >= 0 && valor < 1000000) {
      print('Modificando dinheiro do $nome');
      _dinheiro = valor;
    }
  }

  //retornar valor privado com o getter
  double? get dinheiro {
    print('Lendo dinheiro do $nome');
    return _dinheiro;
  }
}
