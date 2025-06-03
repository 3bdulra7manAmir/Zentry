class InterestCategory
{
  final int id;
  final String image;
  final String name;
  final String activeUsers;

  const InterestCategory({
    required this.id,
    required this.image,
    required this.name, 
    required this.activeUsers,
  });

  factory InterestCategory.fromJson(Map<String, dynamic> json)
  {
    return InterestCategory(
      id: json['id'] as int,
      image: json['image'] as String,
      name: json['name'] as String,
      activeUsers: json['activeUsers'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': id,
      'image': image,
      'name': name,
      'activeUsers': activeUsers,
    };
  }
}
