import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  final int index;

  const ContainerBox({Key? key, required this.index}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final bool isGreen = index % 2 == 0;
    return Expanded(
      child: Container(
        color: isGreen ? const Color.fromARGB(255, 0, 255, 42) : const Color.fromARGB(255, 200, 255, 0),
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        child: Center(
          child: Text(
            index.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}