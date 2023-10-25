void main(){

  Pessoa.alturaPadrao = 2.05;
  Pessoa pessoa1 = Pessoa(nome: 'Daniel', idade: 40);
  pessoa1.nome;
  pessoa1.idade;
  pessoa1.comer();
  print(pessoa1.altura);

  //pessoa1.atributoStatic;

  //defino um atributo à classe através desse atributo static
  Pessoa.atributoStatic = 'Bruno';

  print(Pessoa.atributoStatic);

  print(Pessoa.metodoStatic());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
  double altura = alturaPadrao;

  void comer() {
    print('Comendo...');
    //POSSO CHAMAR O STATIS A PARTIR DE UM COMUM
  }

  static String atributoStatic = 'abc';

  static String metodoStatic() {
    //posso juntar os dois
    return 'Olá mundo! $atributoStatic';
  }
  //NÃO POSSO LER UM ATRIBUTO QUE NÃO É STATIC DENTRO DO STATIC!!!

  static double alturaPadrao = 0;

}
