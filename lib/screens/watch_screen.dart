import 'package:flutter/material.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // 1. معلومات الفريقين في الأعلى
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('الأهلي 1 - 0 الزمالك', 
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          
          // 2. مشغل الفيديو في المنتصف
          Container(
            height: 250,
            color: Colors.grey[900],
            child: const Center(child: Icon(Icons.play_circle_fill, size: 60, color: Colors.white)),
          ),
          
          // 3. مساحة تحت الفيديو للمعلومات
          const Expanded(
            child: Center(
              child: Text('تفاصيل المباراة والتشكيلة هنا...', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

