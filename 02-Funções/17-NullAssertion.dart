void main() {
  //definindo chave e valor
  Map<int, String> ddds = {11: 'São Paulo', 82: 'Maceió', 41: 'Curitiba'};

  //percorrer a lista
  ddds.forEach((key, value) {
    print('Key $key Value $value');
  });

  print(ddds);

  //dds.clear();

  ddds.addAll({90: 'Cidade Legal', 87: 'Pernambuco'});
  print(ddds);

  ddds.removeWhere((key, value) => key > 20);
  print(ddds);

  String? cidade = ddds[15] ?? 'Não Informado';
  print(cidade.toLowerCase());

  // é necessário ter certeza que esse retorno não será null null assertion
  String cidade2 = ddds[11]!;
  print(cidade2);

  //tem a chance de estar sozinho
  String? cidade3 = ddds[11];
  print(cidade3);
}
