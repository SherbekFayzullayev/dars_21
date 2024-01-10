import 'package:dars_21/data/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final malumot = data;
  @override
  Widget build(BuildContext context) {
    String argument = 'Sherbek Fayzullayev';
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text('data')),
      body: ListView.builder(
          itemCount: malumot.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, '2', arguments: malumot[index]);
              },
              title: Text(malumot[index]['name']),
              subtitle: Text(malumot[index]['old'].toString()),
            );
          }),
    );
  }
}
