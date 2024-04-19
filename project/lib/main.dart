import 'package:flutter/material.dart';
import 'container_box.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];
    for (int i = 0; i < 6; i++) {
      List<Widget> columns = [];
      for (int j = 0; j < 3; j++) {
        columns.add(ContainerBox(index: i * 3 + j));
      }
      rows.add(Expanded(
        child: Row(
          children: columns,
        ),
      ));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 87, 3, 244),
          title: const Text(
            'Creative Designs...',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: rows,
        ),
      ),
    );
  }
}