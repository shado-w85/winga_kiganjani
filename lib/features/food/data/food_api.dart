import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../core/network/api_config.dart';
import '../domain/food_model.dart';

class FoodApi {
  Future<List<FoodItem>> getFoodList() async {
    final uri = Uri.parse('${ApiConfig.baseUrl}/foods');

    final response = await http.get(
      uri,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      return data
          .map((item) => FoodItem.fromJson(item as Map<String, dynamic>))
          .toList();
    }

    throw Exception(
      'Imeshindikana kupata orodha ya vyakula. '
      'Status: ${response.statusCode}',
    );
  }
}
