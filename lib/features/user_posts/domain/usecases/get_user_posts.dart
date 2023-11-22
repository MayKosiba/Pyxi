import 'package:pyxi/core/resources/data_state.dart';
import 'package:pyxi/core/usecase/usecase.dart';
import 'package:pyxi/features/user_posts/domain/entities/user_post_entity.dart';
import 'package:pyxi/features/user_posts/domain/repository/user_post_repository.dart';

class GetUserPostsUseCase
    implements UseCase<DataState<List<UserPostEntity>>, void> {
  final UserPostRepository _postRepository;

  GetUserPostsUseCase(this._postRepository);

  @override
  Future<DataState<List<UserPostEntity>>> call({void params}) {
    return _postRepository.getUserPosts();
  }
}
