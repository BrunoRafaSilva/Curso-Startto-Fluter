void main() {
  //Valor da variavel é travado em tempo de compilação, não pode ser definida depois
  const nome = 'Daniel';
  const idade = 50 + 30;
  const lista = ['Bruno', 'Silva'];

  //pode ser definida ao deccorer do código
  final String sobrenome = 'Silva';
  final DateTime agora = DateTime.now();
  print(agora);

  //final pode ser deifinido inicialmente como vazio
  final String sobrenome2;
  if (nome == 'Daniel') {
    sobrenome2 = 'Mendes';
  } else {
    sobrenome2 = 'Santos';
  }
  print(sobrenome2);
}
