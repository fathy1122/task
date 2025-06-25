import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task/data/models/products_response.dart';

class ApiManager {
  static const String baseUrl = 'fakestoreapi.com';
  static const String getProducts = '/products';

  static Future<List<ProductsResponse>> getItems() async {
    try {
      var uri = Uri.https(baseUrl, getProducts);
      var response = await http.get(uri);
print(response.body);
      if (response.statusCode == 200) {
        var decode = jsonDecode(response.body) as List;
        return decode.map((item) => ProductsResponse.fromJson(item)).toList();
      } else {
        throw Exception('Failed to load products: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }
}
