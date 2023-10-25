import '01-classe.dart';

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Bruno', idade: 24);
  pessoa1.cpf = '025.654.987-89';
  print(pessoa1.cpf);
  print(pessoa1.temperatura);
  // ele apenas executa a primeira vez e já mantém o valor salvo.
  print(pessoa1.temperatura);
  print(pessoa1.temperatura);
  print(pessoa1.temperatura);
  print(pessoa1.temperatura);
  
}


class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  //vai ser uma variavel que será utilizada depois
  //isso vai com que os campos que você for usar cpf não precisem passar por verificação de nullable
  //ele pode ficar sem valor até o momento que ele precise ser lido.
  late String cpf;

  late double temperatura = medirTemperatura();

  double medirTemperatura(){
    print('Mediu a temperatura');
    return 37.0;
  }
}