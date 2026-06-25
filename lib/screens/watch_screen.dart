import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("البث المباشر")),
      body: StreamBuilder(
        // بنقوله اسمع الـ Collection اللي اسمه "matches"
        stream: FirebaseFirestore.instance.collection('matches').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var match = snapshot.data!.docs[index];
              return ListTile(
                title: Text(match['matchName']), // بيعرض اسم الماتش
                subtitle: Text(match['link']),   // بيعرض الرابط
                leading: const Icon(Icons.live_tv, color: Colors.red),
              );
            },
          );
        },
      ),
    );
  }
}
