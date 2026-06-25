import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  // ده الرابط اللي هنكلمه عشان نجيب الماتشات (هيتغير بعدين)
  final String _baseUrl = "https://api.example.com/matches";

  Future<List<dynamic>> getMatches() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('فشل في تحميل البيانات');
    }
  }
}

