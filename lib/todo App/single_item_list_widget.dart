import 'package:flutter/material.dart';

class SingleItemWidget extends StatelessWidget {
  const SingleItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Take Tokens'),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
      leading: CircleAvatar(
        child: Icon(
          Icons.navigate_next,
          color: Colors.amberAccent,
        ),
      ),
      subtitle: Text('23 Nov 2013'),
    );
  }
}
