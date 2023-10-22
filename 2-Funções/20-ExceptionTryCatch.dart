void main() {
  try {
    int resultado = 100 ~/ 0; //divisão inteira;
  } on UnsupportedError {
    print('Não divisivel'); //já trata o erro para que não trave a aplicação
  } catch (e) {
    print(e.runtimeType);
  } finally {
    print('final');
  }

  String sNumero = '50.2';
  //passar string para numero
  double? numero2 = double.tryParse(sNumero);
  double numero = double.parse(sNumero);
  print('Valor ${numero} e valor ${numero2}');
}
