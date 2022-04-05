// ignore_for_file: prefer_const_constructors

import 'package:first_app/models/post_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(title: Text('Details $args')),
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(args.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 24,
            ),
            Text(args.body,
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
      ),
    );
  }
}
