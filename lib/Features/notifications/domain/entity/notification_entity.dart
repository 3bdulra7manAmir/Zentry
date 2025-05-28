class NotificationEntity {
  final String id;
  final String userImage;
  final String username;
  final String action;
  final String device;
  final String time;
  final String isFriendRequest;

  NotificationEntity({
    required this.id,
    required this.userImage,
    required this.username,
    required this.action,
    required this.device,
    required this.time,
    required this.isFriendRequest,

  });

  factory NotificationEntity.fromJson(Map<String, dynamic> json) {
    return NotificationEntity(
      id: json['id'].toString(),
      userImage: json['userImage'] as String,
      username: json['username'] as String,
      action: json['action'] as String,
      device: json['device'] as String,
      time: json['time'] as String,
      isFriendRequest: json['isFriendRequest'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userImage': userImage,
      'username': username,
      'action': action,
      'device': device,
      'time': time,
      'isFriendRequest': isFriendRequest,
    };
  }
}
