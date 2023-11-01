import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});
// controlador de campo de texto, ele irá permitir ler

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma tarefa.',
                        hintText: 'Ex. Estudar muito.'),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 56, 98, 104),
                    padding: EdgeInsets.all(14),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text('Tarefa 1'),
                  subtitle: Text('20/11/2020'),
                  leading: Icon(Icons.save, size: 30),
                  onTap: () {
                    print('Tarefa 2');
                  },
                ),
                ListTile(
                  title: Text('Tarefa 2'),
                  subtitle: Text('22/11/2020'),
                  leading: Icon(
                    Icons.abc_sharp,
                    size: 30,
                  ),
                  onTap: () {
                    print('Tarefa 2');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Você possui 0 tarefas pendentes',
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Limpar tudo'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 56, 98, 104),
                      padding: EdgeInsets.all(14)),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
