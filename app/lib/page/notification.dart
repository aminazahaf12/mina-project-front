import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FDFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF50C2C9),
        title: const Center(child: Text('Notification')),
      ),
    );
  }
}
