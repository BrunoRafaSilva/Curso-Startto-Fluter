void main() {
  //objeto Pessoa criado dentro da variavel pessoa1
  Pessoa pessoa1 = Pessoa(nome: 'Bruno', idade: 24);
  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.aniversario());
  pessoa1.casar();
  print(pessoa1.casado);

  Pessoa pessoa2 = Pessoa(nome: 'Daniel', idade: 29);
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
  Pessoa({required this.nome, required this.idade}){
    print('Criando o $nome com idade $idade');
  }

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
