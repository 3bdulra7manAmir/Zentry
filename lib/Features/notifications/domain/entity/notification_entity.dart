class NotificationEntity {
  final String id;
  final String userImage;
  final String username;
  final String action;
  final String time;

  NotificationEntity({
    required this.id,
    required this.userImage,
    required this.username,
    required this.action,
    required this.time,
  });

  factory NotificationEntity.fromJson(Map<String, dynamic> json) {
    return NotificationEntity(
      id: json['id'].toString(),
      userImage: json['userImage'] as String,
      username: json['username'] as String,
      action: json['action'] as String,
      time: json['time'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userImage': userImage,
      'username': username,
      'action': action,
      'time': time,
    };
  }
}
