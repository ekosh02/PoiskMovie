import 'package:flutter/material.dart';
import 'package:tmdb_app/resources/app_images.dart';
import 'package:tmdb_app/style/color_set.dart';
import 'package:tmdb_app/style/text_styles.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ColorSet.dartTheme,
      child: ListView(
        children: const [
          _TopPosterWidget(),
          _MovieNameWidget(),
          _SummeryWidget(),
        ],
      ),
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

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      child: Center(
        child: RichText(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          text: const TextSpan(
            children: [
              TextSpan(text: 'Mars', style: TextStyles.title1SemiboldWhite),
              TextSpan(text: '(2022)', style: TextStyles.headline1RegularWhite),
            ],
          ),
        ),
      ),
    );
  }
}

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.black26,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 13),
        child: Center(
          child: Text(
              'R, 08/29/2022 (US) 1h 59m \nAction, Triller, War, Adventure',
              style: TextStyles.headline1RegularWhite),
        ),
      ),
    );
  }
}
