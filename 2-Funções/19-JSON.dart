import 'dart:convert';

void main() {
  Map<String, dynamic> dados = json.decode(dadosDoUsuario());

  print(dados['nome']);
  print(dados['endereço']['numero']);
  print(dados['cursos'][0]['dificuldade']);
}

String dadosDoUsuario() {
  return """
  {
    "nome": "Bruno Rafael",
    "sobrenome": "Silva",
    "idade": 24,
    "casado": false,
    "altura": 2.05,
    "cursos":[
      {
        "nome": "Dart",
        "dificuldade": 1
      },
      {
        "nome": "Flutter",
        "dificuldade": 2
      }
    ],
    "endereço" : {
      "cidade": "Maceió",
      "pais": "Brasil",
      "numero": 100
    }
  }
  """;
}
