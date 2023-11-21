import 'package:pyxi/core/resources/data_state.dart';
import 'package:pyxi/features/user_posts/data/models/user_post.dart';
import 'package:pyxi/features/user_posts/domain/entities/user_post_entity.dart';
import 'package:pyxi/features/user_posts/domain/repository/user_post_repository.dart';

class UserPostRepositoryImpl implements UserPostRepository {
  @override
  Future<DataState<UserPostModel>> createUserPost(UserPostEntity post) {
    // TODO: implement
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<UserPostModel>>> getUserPosts() {
    // TODO: implement
    throw UnimplementedError();
  }
}
