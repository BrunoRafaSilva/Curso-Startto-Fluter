void main2() {
  print('Inicio');
  //reqUsuario();
  print('Fim');
}

void encontrouUsuario(String usuario) {
  print('Encontrou $usuario');
}

void main() async {
  String usuario = await reqUsuario();
  print(usuario);
}

//função assyncrona
Future<String> reqUsuario() async {
  //Notação para delay
  await Future.delayed(Duration(seconds: 2));
  print('Encontrou Usuário Daniel Ciolfi');
  return 'Daniel Ciolfi';
}

Future<bool> autenticar(String usuario) async {
  await Future.delayed(Duration(seconds: 2));
  if (usuario == 'Bruno Silva') return true;
  throw usuarioInvalidado();
}

class usuarioInvalidado implements Exception {}
