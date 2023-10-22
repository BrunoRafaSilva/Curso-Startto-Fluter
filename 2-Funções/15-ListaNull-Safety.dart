void main() {
  //Não pode adicionar valor null, a menos que coloque o sinal de '?'
  List<String?> lista1 = ['Bruno', 'Silva', null];
  lista1.add('Franchesco');
  print(lista1);

  //pode criar uma lista nulla, ela não é uma lista vazia e sim nula, porém não aceita null
  List<String>? lista2;
  if (lista2 != null) {
    lista2.add('Silva');
  }
  
  //pode conter itens nulos
  List<String>? lista3;
}
