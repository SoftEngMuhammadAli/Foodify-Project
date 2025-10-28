import 'dart:convert';
import 'package:http/http.dart' as http;

/// A service class to handle all API requests in a clean and reusable way.
class ApiServices {
  // Base URL of your backend API
  final String baseUrl;

  ApiServices({required this.baseUrl});

  /// Generic GET request
  Future<dynamic> get(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await http.get(url);
      return _handleResponse(response);
    } catch (e) {
      print('❌ GET request failed: $e');
      rethrow;
    }
  }

  /// Generic POST request
  Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      print('❌ POST request failed: $e');
      rethrow;
    }
  }

  /// Generic PUT request
  Future<dynamic> put(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    try {
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );
      return _handleResponse(response);
    } catch (e) {
      print('❌ PUT request failed: $e');
      rethrow;
    }
  }

  /// A simple fetch example (for testing/demo)
  Future<void> fetchData(String url) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      print('✅ Data fetched successfully from $url');
    } catch (e) {
      print('❌ Error fetching data: $e');
    }
  }

  /// Handle HTTP response with error checking
  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      print('⚠️ Server error: ${response.statusCode}');
      throw Exception('Failed request: ${response.statusCode}');
    }
  }
}
