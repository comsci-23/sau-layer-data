class NasaLayerData {
  final String id;
  final String title;
  final String description;

  NasaLayerData({required this.id, required this.title, required this.description});

  factory NasaLayerData.fromJson(Map<String, dynamic> json) {
    return NasaLayerData(
      id: json['data'][0]['nasa_id'],
      title: json['data'][0]['title'],
      description: json['data'][0]['description'],
    );
  }
}