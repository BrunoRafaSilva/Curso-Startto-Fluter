void main() {
  RepositorioPessoas repo = RepositorioPessoasRemote();
  repo.ler(10);
  repo.adicionar('Bruno');
  repo.apagar(5);
}

abstract class RepositorioPessoas {
  String ler(int i);
  void adicionar(String nome);
  void apagar(int i);
  //para adicionar novos metodos é necessário implementar aqui e implementar nas outras como aconteceu, ou implementar um só em uma ou outra
}

class RepositorioPessoasRemote implements RepositorioPessoas {
  @override
  void adicionar(String nome) {

  }

  @override
  void apagar(int i) {

  }

  @override
  String ler(int i) {
    return 'Bruno';
    
  }

}

class RepositorioPessoasLocal implements RepositorioPessoas {
  @override
  void adicionar(String nome) {

  }

  @override
  void apagar(int i) {
 
  }

  @override
  String ler(int i) {
    return 'Lucena';
  }

}
