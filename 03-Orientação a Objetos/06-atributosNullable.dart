void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Daniel', idade: 15);
  Pessoa pessoa2 = Pessoa(nome: 'Bruno', idade: 30, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 30000;
  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);

  if (pessoa1.dinheiro > 150) {
    print(pessoa1.dinheiro);
  }

  String? nome = pessoa1._nomeSecreto;
  if(nome!=null){
    print(nome);
  }

  if(pessoa1.nomeSecreto !=null){
    print(pessoa1.nomeSecreto);
  }

  //se tiver certeza que esse atributo não se modifica
  if(pessoa1.atributo != null){
    print(pessoa1.atributo!.toUpperCase());
  }


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
  double _dinheiro = 0;

  String? _nomeSecreto = 'Flutter';

/*
  get nomeSecreto {
    if(_nomeSecreto != null){
      return _nomeSecreto;
    }else{
      null;
    }
  }*/


  get nomeSecreto {
    //dentro desse metodo o _nomeSecreto é absolvido por 'nome', mas não é o mesmo nome definido antes
    String? nome = _nomeSecreto;
    if (nome != null) {
      _nomeSecreto = null;
      return nome;
    } else {
      return null;
    }
  }

  String? atributo = 'Olá mundo';

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
  set dinheiro(double valor) {
    if (valor >= 0 && valor < 1000000) {
      print('Modificando dinheiro do $nome');
      _dinheiro = valor;
    }
  }

  //retornar valor privado com o getter
  double get dinheiro {
    print('Lendo dinheiro do $nome');
    //ver o dinheiro varias vezes irá reduzi-lo
    _dinheiro -= 100;
    return _dinheiro;
  }
}
