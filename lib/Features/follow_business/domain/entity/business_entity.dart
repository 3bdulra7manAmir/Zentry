class BusinessEntity {
  final int id;
  final String image;
  final String title;
  final String subtitle;

  BusinessEntity({
    required this.id,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory BusinessEntity.fromJson(Map<String, dynamic> json)
  {
    return BusinessEntity(
      id: json['id'] as int,
      image: json['image'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': id,
      'image': image,
      'title': title,
      'subtitle': subtitle,
    };
  }
}
