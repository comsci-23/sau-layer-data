import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sau_layer_data/domain/entities/nasa_layer_data.dart';

abstract class NasaLayerService {
  Future<List<NasaLayerData>> fetchLayerData();
}

class NasaLayerServiceImpl implements NasaLayerService {
  @override
  Future<List<NasaLayerData>> fetchLayerData() async {
    const url = 'https://images-api.nasa.gov/search?q=earth&media_type=image';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final items = data['collection']['items'] as List;

      return items.take(50).map((item) => NasaLayerData.fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch layer data');
    }
  }
}