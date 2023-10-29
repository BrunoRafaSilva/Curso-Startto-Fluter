import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });

    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 4, 4),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: isFull
                      ? AssetImage('assets/images/image2.jpg')
                      : AssetImage('assets/images/image.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFull ? 'Lotado' : 'Pode entrar!',
                style: TextStyle(
                  fontSize: 30,
                  color: isFull ? Colors.red : Colors.green,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32), //faz um paddin geral
                child: Text(
                  count.toString(),
                  style: TextStyle(
                      fontSize: 100, color: isFull ? Colors.red : Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpty ? null : decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: isEmpty
                            ? Colors.white.withOpacity(0.2)
                            : Colors.white,
                        fixedSize: const Size(100, 100),
                        foregroundColor: isEmpty
                            ? Colors.white.withOpacity(0.2)
                            : Colors.black, //Primary caiu em desuso
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: const Text(
                      'Saiu',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                      width: 32), //ELE ESTÁ DANDO ESPAÇO ENTRE OS BOTOES
                  TextButton(
                    onPressed: isFull ? null : increment,
                    style: TextButton.styleFrom(
                        backgroundColor: isFull
                            ? Colors.white.withOpacity(0.2)
                            : Colors.white,
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
          )),
    );
  }
}
