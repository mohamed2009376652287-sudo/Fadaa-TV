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
      ),
      body: ListView(
        children: const [
          ListTile(title: Text('الدعم الفني', style: TextStyle(color: Colors.white))),
          ListTile(title: Text('مشاركة التطبيق', style: TextStyle(color: Colors.white))),
          ListTile(title: Text('حول التطبيق', style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}
