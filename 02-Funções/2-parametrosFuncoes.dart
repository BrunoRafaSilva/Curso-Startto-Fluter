void main() {
  saudacoes('Daniel', false, '*');
  saudacoes('Bruno Silva'); // se passar o asterisco sem passar o true ou false, irá dar erro, pois é necessário em sequencia a menos que vire chave

  // String tempo = agora();
  // print(tempo);
  // print(agora());
}

void saudacoes(String nome, [bool mostrarAgora = true, String sep = '-']) {
  print(sep * 20);
  print('Saudações do $nome');
  print('You are Welcome');
  if (mostrarAgora) {
    print('agora: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
