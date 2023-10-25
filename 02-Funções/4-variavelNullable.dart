void main() {
  saudacoes('Daniel', cliente: 'Marcos');
  saudacoes('Danilo');

  int? numero = 10; //ele pode assumir um valor ou não ter valor

  numero++;
  print(numero);

  // String tempo = agora();
  // print(tempo);
  // print(agora());
}

void saudacoes(String nome,
    {bool mostrarAgora = true, bool mostrarCliente = false, String? cliente}) {
  print('Saudações do $nome');

  if (cliente != null) {
    print('You are Welcome, $cliente!');
  } else {
    print('You are Welcome, Visitante');
  }

  if (mostrarAgora) {
    print('agora: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
