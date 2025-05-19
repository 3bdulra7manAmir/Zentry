class Business {
  final int id;
  final String image;
  final String title;
  final String subtitle;

  Business({
    required this.id,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory Business.fromJson(Map<String, dynamic> json) {
    return Business(
      id: json['id'] as int,
      image: json['image'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'subtitle': subtitle,
    };
  }
}
