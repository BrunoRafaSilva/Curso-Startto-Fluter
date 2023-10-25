void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = 'Rex';
  cachorro1.idade = 3;
  cachorro1.Comer();
  cachorro1.Dormir();
  cachorro1.Latir();

  Gato gato1 = Gato();
  gato1.nome = 'Mikeias';
  gato1.idade = 8;
  gato1.Comer();
  gato1.Dormir();
  gato1.Miar();
  gato1.vidas--;
  print(gato1.vidas);
}

class Animal {
  void Comer() {
    print('Comer');
  }

  void Dormir() {
    print('Dormiu');
  }
}

class Cachorro extends Animal {
  String? nome;
  int? idade;

  //metodos
  void Latir() {
    print('AU AU AU!');
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
}
