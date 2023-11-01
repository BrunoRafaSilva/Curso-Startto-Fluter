import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController emailController =
      TextEditingController(); // controlador de campo de texto, ele irá permitir ler

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'E-mail'),
              onChanged: onChanged,
              onSubmitted: onSubmited,
            ),
            ElevatedButton(onPressed: login, child: const Text('Entrar'))
          ],
        ),
      )),
    );
  }

  void login() {
    String text = emailController.text;
    print(text);
    emailController.text = 'Bruno';
    //emailController.clear();
  }

  void onChanged(String text) {
    //print(text);
  }

  void onSubmited(String text) {
    print(text);
  }
}
