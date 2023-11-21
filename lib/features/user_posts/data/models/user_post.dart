import 'dart:convert';
import 'package:pyxi/features/user_posts/domain/entities/user_post_entity.dart';

class UserPostModel extends UserPostEntity {
  const UserPostModel(
      {required super.id,
      required super.userId,
      required super.title,
      required super.communityId,
      required super.totalLikes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'title': title,
      'communityId': communityId,
      'totalLikes': totalLikes,
    };
  }

  factory UserPostModel.fromMap(Map<String, dynamic> map) {
    return UserPostModel(
      id: map['id'] as String,
      userId: map['userId'] as String,
      title: map['title'] as String,
      communityId: map['communityId'] as String,
      totalLikes: map['totalLikes'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserPostModel.fromJson(String source) =>
      UserPostModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
