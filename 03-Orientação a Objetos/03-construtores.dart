void main() {
  //objeto Pessoa criado dentro da variavel pessoa1
  Pessoa pessoa1 = Pessoa.solteira(nome: 'Bruno', idade: 24);
  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.aniversario());
  print(pessoa1.casado);

  Pessoa pessoa2 = Pessoa.casada(nome: 'Daniel', idade: 29);
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);
  print(pessoa2.aniversario());
  pessoa2.trocarNome('Henrique');
  print(pessoa2.nome);

  //metodos é uma ação que um objeto pode tomar ou um agente interno pode fazer com o objeto
}

//classe
class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando o $nome com idade $idade');
  }

  Pessoa.casada({required this.nome, required this.idade, this.casado = false});

  Pessoa.solteira(
      {required this.nome, required this.idade, this.casado = false});

  String nome;
  int idade;

  bool casado = false;

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
}
