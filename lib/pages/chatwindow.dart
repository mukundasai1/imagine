import 'package:flutter/material.dart';

class ChatWindow extends StatelessWidget {
  const ChatWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Chats",
        ),
      ),
      body: const Center(
        child: Text(
          "Chat Window",
        ),
      ),
    );
  }
}
