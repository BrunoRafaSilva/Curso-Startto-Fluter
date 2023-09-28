void main() {
  saudacoes('Daniel', cliente: 'Marcos');
  saudacoes('Danilo');

  funcao('olá', null, c: 'teste', d: 'teste', e: null);
  // String tempo = agora();
  // print(tempo);
  // print(agora());
}

void saudacoes(String nome,
    {bool mostrarAgora = true, bool mostrarCliente = false, String? cliente}) {
  print('Saudações do ${nome.toUpperCase()}');

  String c = cliente ?? 'Não informado'; //se o valor c for valido, ele puxa o valor da variavel, se não ele retorna não informado

  print('You are Welcome, ${c.toUpperCase()}!');

  if (mostrarAgora) {
    print('agora: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}

void funcao( String a, String? b,{ String? c, required String d, required String? e}){

}