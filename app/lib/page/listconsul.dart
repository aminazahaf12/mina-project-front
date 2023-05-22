import 'package:flutter/material.dart';

class list_consul extends StatefulWidget {
  const list_consul({super.key});

  @override
  State<list_consul> createState() => _list_consulState();
}

class _list_consulState extends State<list_consul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF50C2C9),
        title: const Center(child: Text('liste de consultation')),
      ),
    );
  }
}
