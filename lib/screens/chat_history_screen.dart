import 'package:flutter/material.dart';

class ChatHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat History'),
      ),
      body: const Center(
        child: Text('List of chat history will be shown here.'),
      ),
    );
  }
}
