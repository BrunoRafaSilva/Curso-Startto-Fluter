//
//
//Não pode mais instanciar animal diretamente adicionando abstract a Animal
//
//Olhe a linha 39 // ele obrigada que cada classe especifique a ação desse metodo inserido, já que ela é a superclasse.
//
void main() {
  Cachorro cachorro1 = Cachorro('Rex', 3);
  cachorro1.Comer();
  cachorro1.Dormir();
  cachorro1.Latir();
  cachorro1.Morrer();

}


Animal funcao() {
  return Cachorro('Dog', 2);
}

abstract class Animal {
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

  //terei que definir morrer em todas as classes 9necessário classe abstrata
  void Morrer();
  
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
    Dormir();
  }

  @override
  void Morrer(){
    print('Muito triste:(');
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
  
  @override
  void Morrer() {
    vidas--;
    print('Sobraram: $vidas');
  }
}
