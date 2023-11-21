import 'package:equatable/equatable.dart';

class UserPostEntity extends Equatable {
  final String id;
  final String userId;
  final String title;
  final String communityId;
  final int totalLikes;

  const UserPostEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.communityId,
    required this.totalLikes,
  });

  @override
  List<Object> get props {
    return [
      id,
      userId,
      title,
      communityId,
      totalLikes,
    ];
  }
}
