import 'package:flutter/material.dart';

void main() {
  runApp(const FadaaTVApp());
}

class FadaaTVApp extends StatelessWidget {
  const FadaaTVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'مشروع الفضائي TV - قيد التأسيس',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
