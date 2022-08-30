import 'package:flutter/material.dart';
import 'package:tmdb_app/resources/app_images.dart';

class MovieDetailsMainInfoWidget extends StatefulWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  State<MovieDetailsMainInfoWidget> createState() =>
      _MovieDetailsMainInfoWidgetState();
}

class _MovieDetailsMainInfoWidgetState
    extends State<MovieDetailsMainInfoWidget> {
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
