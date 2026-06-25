import 'package:flutter/material.dart';

class LeaguesScreen extends StatelessWidget {
  const LeaguesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('البطولات', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(leading: Icon(Icons.emoji_events, color: Colors.amber), title: Text('الدوري المصري', style: TextStyle(color: Colors.white))),
          ListTile(leading: Icon(Icons.emoji_events, color: Colors.blue), title: Text('دوري أبطال أوروبا', style: TextStyle(color: Colors.white))),
          ListTile(leading: Icon(Icons.emoji_events, color: Colors.green), title: Text('الدوري الإنجليزي', style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}
