// ignore_for_file: prefer_const_constructors

import 'package:first_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../repositories/home_repository_imp.dart';
import '../services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () async {
                PrefsService.removeKey('user_email');
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (_) => true);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (_, idx) => ListTile(
                leading: Text(list[idx].id.toString()),
                title: Text(list[idx].title),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () => Navigator.of(context)
                    .pushNamed('/details', arguments: list[idx]),
              ),
              separatorBuilder: (_, __) => Divider(),
            );
          }),
    );
  }
}
