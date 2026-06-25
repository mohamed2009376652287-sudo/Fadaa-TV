import 'package:flutter/material.dart';
import '../services/api_service.dart';

class LeaguesScreen extends StatefulWidget {
  const LeaguesScreen({super.key});

  @override
  State<LeaguesScreen> createState() => _LeaguesScreenState();
}

class _LeaguesScreenState extends State<LeaguesScreen> {
  final ApiService _apiService = ApiService();
  late Future<Map<String, dynamic>> _matchesFuture;

  @override
  void initState() {
    super.initState();
    _matchesFuture = _apiService.getMatches();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('مباريات الدوري الإنجليزي', style: TextStyle(color: Colors.white)), backgroundColor: Colors.black),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _matchesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('خطأ: ${snapshot.error}', style: const TextStyle(color: Colors.red)));
          }
          final matches = snapshot.data!['matches'] as List;
          return ListView.builder(
            itemCount: matches.length,
            itemBuilder: (context, index) {
              final match = matches[index];
              return ListTile(
                title: Text('${match['homeTeam']['name']} vs ${match['awayTeam']['name']}', style: const TextStyle(color: Colors.white)),
                subtitle: Text(match['utcDate'], style: const TextStyle(color: Colors.grey)),
              );
            },
          );
        },
      ),
    );
  }
}
