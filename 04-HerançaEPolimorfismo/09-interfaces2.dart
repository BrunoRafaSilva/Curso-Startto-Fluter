void main() {
  Movel movel1 = Pessoa();
  movel1.frente();
  movel1.esquerda();

  Vendivel vend1 = Geladeira();
  print(vend1.preco());
  Vendivel vend2 = Carro();
  print(vend2.preco());
}

class Geladeira implements Vendivel {
  @override
  double preco() {
    return 1000;
  }
}

class Pessoa implements Movel {

  String? nome;

  @override
  void esquerda() {}

  @override
  void frente() {}

  @override
  void direita() {}
}

class Carro implements Movel, Vendivel {

  String? modelo;

  @override
  void esquerda() {}

  @override
  void frente() {}

  @override
  void direita() {}
  
  @override
  double preco() {
    return 50000;
  }
}

abstract class Movel {
  void direita();
  void esquerda();
  void frente();
}

abstract class Vendivel {
  double preco();
}