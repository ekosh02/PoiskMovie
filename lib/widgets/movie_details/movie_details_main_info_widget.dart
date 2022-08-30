import 'package:flutter/material.dart';
import 'package:tmdb_app/resources/app_images.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _TopPosterWidget(),
      ],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Image(image: AssetImage(AppImages.andromeda)),
        Positioned(
          left: 16,
          top: 20,
          bottom: 20,
          child: Image(image: AssetImage(AppImages.mars)),
        ),
      ],
    );
  }
}
