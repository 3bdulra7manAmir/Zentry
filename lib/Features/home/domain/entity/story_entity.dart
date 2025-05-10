class StoryEntity
{
  final String? id;
  final String userAvatar;
  final String backgroundImage;
  final String name;

  StoryEntity({
    required this.id,
    required this.userAvatar,
    required this.backgroundImage,
    required this.name,
  });

  factory StoryEntity.fromJson(Map<String, dynamic> json)
  {
    return StoryEntity(
      id: json['id']?.toString(),
      userAvatar: json['userAvatar'] as String,
      backgroundImage: json['backgroundImage'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return {
      'id': id,
      'userAvatar': userAvatar,
      'backgroundImage': backgroundImage,
      'name': name,
    };
  }
}