import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
// controlador de campo de texto, ele irá permitir ler
  final TextEditingController todoController = TextEditingController();

  List<String> todos = [];

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
                Expanded(
                  child: TextField(
                    controller: todoController,
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
                  onPressed: () {
                    String text = todoController.text;
                    setState(() {
                      todos.add(text);
                    });
                    todoController.clear();
                  },
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
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (String todo in todos)
                    ListTile(
                      title: Text(todo),
                      subtitle: Text('20/11/2020'),
                      leading: Icon(Icons.save, size: 30),
                      onTap: () {
                        print('tarefa: $todo');
                      },
                    ),
                ],
              ),
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
