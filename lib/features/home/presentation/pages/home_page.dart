import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push(AppRoutes.categories);
          },
          child: Text('Category'),
        ),
      ),
    );
  }
}
