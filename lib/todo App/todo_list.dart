import 'package:e_book/todo%20App/note_detail_screen.dart';
import 'package:e_book/todo%20App/single_item_list_widget.dart';
import 'package:flutter/material.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NoteDetailScreen(),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.amberAccent,
        ),
      ),
      body: ListView(
        children: const [
          SingleItemWidget(),
          SingleItemWidget(),
          SingleItemWidget(),
          SingleItemWidget(),
        ],
      ),
    );
  }
}
