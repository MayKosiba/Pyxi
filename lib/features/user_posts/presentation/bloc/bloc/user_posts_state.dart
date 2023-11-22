part of 'user_posts_bloc.dart';

sealed class UserPostsState extends Equatable {
  final List<UserPostEntity>? userPosts;
  final DioError? error;
  const UserPostsState({this.userPosts, this.error});

  @override
  List<Object> get props => [userPosts!, error!];
}

final class UserPostsError extends UserPostsState {}

final class UserPostsLoading extends UserPostsState {}

final class UserPostsDone extends UserPostsState {}
