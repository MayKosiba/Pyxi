import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pyxi/core/resources/data_state.dart';
import 'package:pyxi/features/user_posts/data/data_sources/remote/user_posts_service.dart';
import 'package:pyxi/features/user_posts/data/models/user_post.dart';
import 'package:pyxi/features/user_posts/domain/entities/user_post_entity.dart';
import 'package:pyxi/features/user_posts/domain/repository/user_post_repository.dart';

class UserPostRepositoryImpl implements UserPostRepository {
  final UserPostService _postService;
  UserPostRepositoryImpl(this._postService);

  @override
  Future<DataState<UserPostModel>> createUserPost(UserPostEntity post) {
    // TODO: implement
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<UserPostModel>>> getUserPosts() async {
    try {
      final httpResponse = await _postService.getUserPosts(id: '');

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioErrorType.response,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}
