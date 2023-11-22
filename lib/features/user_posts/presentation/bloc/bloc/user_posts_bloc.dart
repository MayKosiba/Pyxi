import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:pyxi/features/user_posts/domain/entities/user_post_entity.dart';

part 'user_posts_event.dart';
part 'user_posts_state.dart';

class UserPostsBloc extends Bloc<UserPostsEvent, UserPostsState> {
  UserPostsBloc() : super(UserPostsLoading()) {
    on<UserPostsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
