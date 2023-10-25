void main() {
  saudacoes('Daniel', mostrarAgora: false, sep: '*');
  saudacoes('Bruno Silva', sep: 'K'); //para especificar fariaveis opcionais basta declarar elas no chamado da função, as não definidas seguiram o valor especificado.

  // String tempo = agora();
  // print(tempo);
  // print(agora());
}

void saudacoes(String nome, {bool mostrarAgora = true, String sep = '-'}) {
  //está dessa maneira por conta do {} ao invês do []
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
