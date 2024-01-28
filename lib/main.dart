import 'dart:io';
import 'package:e_book/todo%20App/note_detail_screen.dart';
import 'package:e_book/todo%20App/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

void main() {
  runApp(const MyScreen());
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: const TodoListScreen(),
    );
  }
}
