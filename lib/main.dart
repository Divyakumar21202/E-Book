import 'package:e_book/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyScreen());
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
        
           
    );
  }
}
