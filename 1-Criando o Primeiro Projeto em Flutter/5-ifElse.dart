void main() {
  double nota = 3.7, exame = 8;

  if (nota >= 5.0) {
    print('aprovado!');
  } else if (nota >= 3.5 && exame >= 7) {
    print('aprovado no Exame');
  } else if (nota >= 3.5) {
    print('Reprovado no Exame');
  } else {
    print('Reprovado');
  }
}
