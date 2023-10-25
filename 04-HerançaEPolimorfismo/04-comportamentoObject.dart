void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = 'Rex';
  cachorro1.idade = 3;
  cachorro1.Comer();
  cachorro1.Dormir();
  cachorro1.Latir();

  //está na superclasse animal o override
  print(cachorro1);

  //O METODO SERVE PARA SE UMA CLASSE PRECISA TER UM RETORNO ESPECIFICO NO MEIO DAS HERANÇAS!


  Gato gato1 = Gato();
  gato1.nome = 'Mikeias';
  gato1.idade = 8;
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
  
  Animal animal1 = animais.first;
  if(animal1 is Cachorro){
    animal1.Latir();
  }else if (animal1 is Gato){
    animal1.Miar();
  }

  animal1.Dormir();
  Animal animal2 = funcao();
  if(animal2 is Cachorro){
    animal2.Latir();
  }else if (animal2 is Gato){
    animal2.Miar();
  }

  animal2.Dormir();

  Object object = Object();
  //object. todos os objetos em dart extende o Object
}

Animal funcao(){
  return Gato();
}

class Animal {
  String? nome;
  int? idade;

  void Comer() {
    print('Comer');
  }

  void Dormir() {
    print('Dormiu');
  }

  @override
  //necessário que seja escrito exatamente dessa maneira para ter o retorno correto.
  String toString(){
    return 'Nome: $nome Idade: $idade';
  }
}

class Cachorro extends Animal {
  String? nome;
  int? idade;

  //metodos
  void Latir() {
    print('AU AU AU!');
  }

  //necessário que o metodo seja igual ao atribuido a principal
  @override
  //sobreescreveu o metodo da superclasse
  void Dormir(){
    print('Dormiu rocando Muito!');
  }
}

class Gato extends Animal {
  String? nome;
  int? idade;
  int vidas = 7;
  //metodos
  void Miar() {
    print('MIAAAAAAAAAAAAAAAAAU!');
  }

  @override
  //necessário que seja escrito exatamente dessa maneira para ter o retorno correto.
  String toString(){
    return 'o Nome do bola de pelo é: $nome Idade: $idade';
  }
}
