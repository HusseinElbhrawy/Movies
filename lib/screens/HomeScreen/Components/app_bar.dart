import 'package:flutter/material.dart';
import 'package:movie_app/shared/config/color.dart';

PreferredSizeWidget homeScreenAppBar = AppBar(
  title: const Text('Movies on Cine\'s'),
  centerTitle: true,
  backgroundColor: const Color(kAppBarBackground),
  actions: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search),
    ),
  ],
);
