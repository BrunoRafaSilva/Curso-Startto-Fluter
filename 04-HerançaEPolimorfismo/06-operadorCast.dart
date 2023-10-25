//
//
//Operador cast tenta converter um operador de um tipo para outro
//
//
//
void main() {
  Cachorro cachorro1 = Cachorro('Rex', 3);
  cachorro1.Comer();
  cachorro1.Dormir();
  cachorro1.Latir();

  //está na superclasse animal o override
  print(cachorro1);

  //O METODO SERVE PARA SE UMA CLASSE PRECISA TER UM RETORNO ESPECIFICO NO MEIO DAS HERANÇAS!

  Gato gato1 = Gato('Mikeias', 35);
  gato1.Comer();
  gato1.Dormir();
  gato1.Miar();
  gato1.vidas--;
  print(gato1.vidas);

  //está na superclasse animal o override
  print(gato1);

  List<Cachorro> cachorros = [];
  List<Gato> gatos = [];
  //vai ser possivel adicionar gatos e cachorros porque as duas extende 'Animal'
  List<Animal> animais = [];
  animais.add(cachorro1);
  animais.add(gato1);

  //aqui eu tenho certeza que criei o cachorro defino a função vinculada a classe animal
  //se retornar gato, ele irá retornar uma exceção TypeError subtype; Animal é o subtipo e cachorro e gato são os subtipos
  Cachorro animal1 = funcao() as Cachorro;
  animal1.Latir();
}

Animal funcao() {
  return Cachorro('Dog', 2);
}

class Animal {
  Animal(this.nome, this.idade);
  String nome;
  int idade;

  void Comer() {
    print('Comer');
  }

  void Dormir() {
    print('Dormiu');
  }

  @override
  //necessário que seja escrito exatamente dessa maneira para ter o retorno correto.
  String toString() {
    return 'Nome: $nome Idade: $idade';
  }

  void dormir() {
    print('mimiu');
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade) {
    print('criou cachorro.');
  }

  void Dormir() {
    //acessando superclasse, ele irá prints o atributo da superclasse mais o definido
    super.Dormir();
    print('Dormiu roncando de maisi!');
  }

  //metodos
  void Latir() {
    print('AU AU AU!');
    dormir();
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade) {
    print('criou gato.');
  }
  int vidas = 7;
  //metodos
  void Miar() {
    print('MIAAAAAAAAAAAAAAAAAU!');
  }

  @override
  //necessário que seja escrito exatamente dessa maneira para ter o retorno correto.
  String toString() {
    return 'o Nome do bola de pelo é: $nome Idade: $idade';
  }
}
