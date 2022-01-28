import 'package:flutter/material.dart';
import 'package:movie_app/screens/HomeScreen/Components/network_image_with_loading.dart';
import 'package:movie_app/shared/config/color.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    Key? key,
    required this.imageUrl,
    this.maxWidth = false,
  }) : super(key: key);
  final String imageUrl;
  final bool maxWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: const Color(kAppBarBackground),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: maxWidth
          ? IgnorePointer(
              ignoring: true,
              child: NetworkImageWithLoading(
                  maxWidth: maxWidth, imageUrl: imageUrl),
            )
          : InkWell(
              enableFeedback: true,
              onTap: () {
                print('Tapped !');
              },
              child: NetworkImageWithLoading(
                  maxWidth: maxWidth, imageUrl: imageUrl),
            ),
    );
  }
}
