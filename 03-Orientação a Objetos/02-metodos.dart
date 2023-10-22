void main() {
  //objeto Pessoa criado dentro da variavel pessoa1
  Pessoa pessoa1 = Pessoa();
  //definindo atributos
  pessoa1.nome = 'Bruno';
  pessoa1.idade = 24;
  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.aniversario());
  pessoa1.casar();
  print(pessoa1.casado);

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Daniel';
  pessoa2.idade = 40;
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
  String? nome;
  int? idade;
  bool casado = false;

  //funções dentro de classes se chamam metodo
  int? aniversario() {
    print('Parabéns $nome');
    if (idade != null) {
      // "!" garante que nao será nulo
      idade = idade! + 1;
    }
    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }
}
