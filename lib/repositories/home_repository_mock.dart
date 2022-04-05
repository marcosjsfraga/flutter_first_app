import 'dart:convert';

import 'package:first_app/models/post_model.dart';
import 'package:first_app/repositories/home_repository.dart';
import 'package:flutter/services.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> gerList() async {
    var value = await rootBundle.loadString('assets/data.json');

    List postJson = jsonDecode(value);

    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
