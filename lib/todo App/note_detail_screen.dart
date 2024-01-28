import 'package:flutter/material.dart';

class NoteDetailScreen extends StatefulWidget {
  const NoteDetailScreen({super.key});

  @override
  State<NoteDetailScreen> createState() => _NoteDetailScreenState();
}

class _NoteDetailScreenState extends State<NoteDetailScreen> {
  List<String> list = <String>['High', 'Low'];
  String dropdownValue = 'High';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Make Your ToDo '),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            const SizedBox(height: 18),
            DropdownButton<String>(
                items: list.map<DropdownMenuItem<String>>((String val) {
                  return DropdownMenuItem(value: val, child: Text(val));
                }).toList(),
                value: dropdownValue,
                elevation: 16,
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                }),
            const SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                  label: const Text('Title'),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(
              height: 18,
            ),
            TextField(
              decoration: InputDecoration(
                  label: const Text('Description'),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
