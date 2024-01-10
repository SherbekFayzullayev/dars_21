import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(title: Text('Fruits')),
        body: ListTile(
          title: Text(arg['name']),
          subtitle: Text(arg['old'].toString()),
        ));
  }
}
