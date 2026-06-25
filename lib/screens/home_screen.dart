import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('الفضائي TV', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('شاشة الرئيسية قيد التصميم', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
