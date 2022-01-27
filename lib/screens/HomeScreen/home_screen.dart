import 'package:flutter/material.dart';
import 'package:movie_app/shared/colors/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies on Cine\'s'),
        centerTitle: true,
        backgroundColor: const Color(kAppBarBackground),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(),
    );
  }
}
