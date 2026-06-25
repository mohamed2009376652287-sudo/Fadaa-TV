import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  // هذا الرابط لجلب المباريات المباشرة من الدوري الإنجليزي كمثال
  final String _baseUrl = "https://api.football-data.org/v4/competitions/PL/matches";
  
  // حط الـ Token الخاص بك هنا
  final String _apiKey = "8fdc011b98634620a59ffe511f471b47"; 

  Future<Map<String, dynamic>> getMatches() async {
    final response = await http.get(
      Uri.parse(_baseUrl),
      headers: {'X-Auth-Token': _apiKey},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load matches');
    }
  }
}
