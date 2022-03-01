import 'package:flutter/material.dart';

class ListViewType1Screen extends StatelessWidget {
  const ListViewType1Screen({Key? key}) : super(key: key);
  final options = const ['aaaaa', 'bb'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('app')),
      body: ListView(
        children: [
          ...options
              .map((opcion) => ListTile(
                    // leading: Icon(Icons.access_alarm),
                    title: Text(opcion),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}
