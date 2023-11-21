import 'package:dio/dio.dart';
import 'package:pyxi/core/constants/constants.dart';
import 'package:pyxi/features/user_posts/data/models/user_post.dart';
import 'package:retrofit/http.dart';

part 'user_posts_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class UserPostService {
  factory UserPostService(Dio dio) = _UserPostService;

  @GET('/nuser/{id}/posts')
  Future<List<UserPostModel>> getUserPosts(@Path() String id) {}
}
