import 'package:first_app/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> gerList();
}
