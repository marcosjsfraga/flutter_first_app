// ignore_for_file: avoid_print

import 'package:first_app/models/post_model.dart';
import 'package:first_app/repositories/home_repository.dart';

import 'package:dio/dio.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> gerList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');

      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }

    return [];
  }
}
