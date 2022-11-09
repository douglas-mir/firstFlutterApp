import 'package:flutter/material.dart';
import 'package:my_app/pages/home_pages.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController _textEditingController = TextEditingController();
  List<String> task = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            Container(
              height: 400,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: task.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(task[index]),
                    onLongPress: () {
                      setState(() {
                        task.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
                child: Text('Rogeria Page')),
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              if (_textEditingController.text.length > 0) {
                setState(() {
                  task.add(_textEditingController.text);
                });
                _textEditingController.clear();
              }
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              setState(() {
                task = [];
              });
              _textEditingController.clear();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
