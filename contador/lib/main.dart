import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('Decrement click');
  }

  void increment() {
    print('Incremente click');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 4, 4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pode entrar!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.green,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(32), //faz um paddin geral
            child: Text(
              '0',
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    foregroundColor: Colors.black, //Primary caiu em desuso
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: const Text(
                  'Saiu',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(width: 32), //ELE ESTÁ DANDO ESPAÇO ENTRE OS BOTOES
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    foregroundColor: Colors.black, //Primary caiu em desuso
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: const Text(
                  'Entrou',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
