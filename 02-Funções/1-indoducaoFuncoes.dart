void main() {
  saudacoes();

  //String tempo = agora();
  // print(tempo);
  // print(agora());
}

void saudacoes() {
  print('Saudações do Daniel Ciolfi');
  print('You are Welcome');
  print('agora: ${agora()}');
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
