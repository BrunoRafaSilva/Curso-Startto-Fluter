void main() {
  //definindo chave e valor
  Map<int, String> ddds = {11: 'São Paulo', 82: 'Maceió', 41: 'Curitiba'};

  //acessa os elementos pela chave
  //se não existe se retorna null
  print(ddds);

  String? cidade = ddds[5];
  print(cidade);

  print(ddds.length);

  ddds[61] = 'Brasilia';
  print(ddds[61]);

  ///dds[61]='Santos' iria substituir

  ddds.remove(49);
  print(ddds);

  print(ddds.values);
  print(ddds.keys);

  print(ddds.containsKey(82));
  print(ddds.containsValue('Maceió'));

  print(ddds.isNotEmpty);
}
