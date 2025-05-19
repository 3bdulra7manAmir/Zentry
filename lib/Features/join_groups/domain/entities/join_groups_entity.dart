class JoinGroupsEntity {
  final int id;
  final String image;
  final String title;
  final String membersCount;

  JoinGroupsEntity({
    required this.id,
    required this.image,
    required this.title,
    required this.membersCount,
  });

  factory JoinGroupsEntity.fromJson(Map<String, dynamic> json) {
    return JoinGroupsEntity(
      id: json['id'] as int,
      image: json['image'] as String,
      title: json['title'] as String,
      membersCount: json['membersCount'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'membersCount': membersCount,
    };
  }
}
