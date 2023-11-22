import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pyxi/core/constants/constants.dart';
import 'package:pyxi/features/user_posts/data/models/user_post.dart';

part 'user_posts_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class UserPostService {
  factory UserPostService(Dio dio) = _UserPostService;

  @GET('/user/{id}/posts')
  Future<HttpResponse<List<UserPostModel>>> getUserPosts({@Path() String id});
}
