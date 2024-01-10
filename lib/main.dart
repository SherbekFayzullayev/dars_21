import 'package:dars_21/ui/home_screen.dart';
import 'package:dars_21/ui/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '1',
      routes: {
        '1': (context) => HomePage(),
        '2': (context) => SecondPage(),
      },
    );
  }
}
