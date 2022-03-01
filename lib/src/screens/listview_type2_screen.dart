import 'package:flutter/material.dart';

class ListViewType2Screen extends StatelessWidget {
  const ListViewType2Screen({Key? key}) : super(key: key);
  final opciones = const ['aaaaa', 'bb', 'cc'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('app')),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(opciones[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          onTap: () {},
        ),
        itemCount: opciones.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
