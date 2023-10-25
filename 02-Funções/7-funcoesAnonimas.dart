void main() {
  saudacoes('daniel', corpo: funcao, corpo2: (i) {
    for (int j = 0; j < i; j++) {
      print('contando ${j + 1}');
    }
  });
} // ele já foi definido como int antes o corpo2

void funcao(int i) {
  for (int j = 0; j < i; j++) {
    print('Olá 1');
    print('Olá 2');
  }
}

void funcao2() {
  print('hello');
  print('hello2');
}

void saudacoes(String nome,
    {bool mostrarAgora = true,
    bool mostrarCliente = false,
    String? cliente,
    required Function corpo,
    required Function(int) corpo2}) {
  print('Saudações do ${nome.toUpperCase()}');

  corpo(10);
  corpo2(10);

  String c = cliente ??
      'Não informado'; //se o valor c for valido, ele puxa o valor da variavel, se não ele retorna não informado

  print('You are Welcome, ${c.toUpperCase()}!');

  if (mostrarAgora) {
    print('agora: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
