import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('المزيد', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          ListTile(leading: Icon(Icons.support_agent, color: Colors.blue), title: Text('الدعم الفني', style: TextStyle(color: Colors.white))),
          ListTile(leading: Icon(Icons.share, color: Colors.white), title: Text('مشاركة التطبيق', style: TextStyle(color: Colors.white))),
          ListTile(leading: Icon(Icons.info, color: Colors.grey), title: Text('حول التطبيق', style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}
