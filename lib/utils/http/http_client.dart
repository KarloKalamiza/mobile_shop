import 'dart:convert';
import 'package:http/http.dart' as http;

class CustomHttpClient {
  static const String baseUrl = "";

  // Helper method to make a get request
  static Future<Map<String, dynamic>> get(String endPoint) async{
    final response = await http.get(Uri.parse('$baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  // helper method to make a post request
  static Future<Map<String, dynamic>> post(String endPoint, dynamic data) async {
    final response = await http.post(
      Uri.parse("$baseUrl/$endPoint"),
      headers: { "Content-Type": "application/json" },
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // helper method to make a post request
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.put(
      Uri.parse("$baseUrl/$endPoint"),
      headers: { "Content-Type": "application/json" },
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // helper method to handle delete request
  static Future<Map<String, dynamic>> delete(String endPoint) async{
    final response = await http.delete(Uri.parse("$baseUrl/$endPoint"));
    return _handleResponse(response);
  }

  // handle the http response
  static Future<Map<String, dynamic>> _handleResponse(http.Response response) {
    if(response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to load data: ${response.statusCode}");
    }
  }
}