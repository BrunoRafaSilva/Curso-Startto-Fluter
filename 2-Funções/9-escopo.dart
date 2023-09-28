int a = 0;

void main() {
  a = 10;

  void funcao() {
    a = 50;

    int b = 5;
    b = 10;
  }

  //b = 12; b está fora do escopo
}
//mesmo padrão Javascript