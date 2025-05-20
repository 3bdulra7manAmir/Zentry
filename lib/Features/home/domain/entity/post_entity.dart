class PostEntity {
  final int id;
  final String userImage;
  final String username;
  final String time;
  final String carModel;
  final String carPrice;
  final String carInfo;
  final String postCarImage;  final String likesCount;
  final String commentsCount;
  final String sharesCount;

  const PostEntity({
    required this.id,
    required this.userImage,
    required this.username,
    required this.time,
    required this.carModel,
    required this.carPrice,
    required this.carInfo,
    required this.postCarImage,
    required this.likesCount,
    required this.commentsCount,
    required this.sharesCount,
  });
  factory PostEntity.fromJson(Map<String, dynamic> json) {
    return PostEntity(
      id: json['id'] as int,
      userImage: json['userimage'] as String,
      username: json['username'] as String,
      time: json['time'] as String,
      carModel: json['carmodel'] as String,
      carPrice: json['carprice'] as String,
      carInfo: json['carinfo'] as String,
      postCarImage: json['postcarimage'] as String,
      likesCount: json['likesCount'] as String,
      commentsCount: json['commentsCount'] as String,
      sharesCount: json['sharesCount'] as String,
    );
  }
}
