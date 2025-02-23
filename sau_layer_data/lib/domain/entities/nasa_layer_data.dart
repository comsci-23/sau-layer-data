class NasaLayerData {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  NasaLayerData({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory NasaLayerData.fromJson(Map<String, dynamic> json) {
    final links = json['links'] as List<dynamic>?;
    final imageUrl = links != null && links.isNotEmpty ? links[0]['href'] : '';

    return NasaLayerData(
      id: json['data'][0]['nasa_id'],
      title: json['data'][0]['title'],
      description: json['data'][0]['description'],
      imageUrl: imageUrl,
    );
  }
}