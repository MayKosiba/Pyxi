import 'package:pyxi/core/resources/data_state.dart';
import 'package:pyxi/features/user_posts/domain/entities/user_post_entity.dart';

abstract class UserPostRepository {
  Future<DataState<List<UserPostEntity>>> getUserPosts();
  Future<DataState<UserPostEntity>> createUserPost(UserPostEntity post);
}
