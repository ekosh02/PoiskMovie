import 'package:flutter/material.dart';
import 'package:tmdb_app/resources/app_images.dart';
import 'package:tmdb_app/style/color_set.dart';
import 'package:tmdb_app/style/text_styles.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TopPosterWidget(),
        _MovieNameWidget(),
        _ScoreWidget(),
        _SummeryWidget(),
        _DescriptionWidget(),
        _CompositionWidget(),
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

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Text(
                    '72%    User Score',
                    style: TextStyles.headline1RegularWhite,
                  ),
                ],
              ),
            ),
            Container(width: 1, height: 16, color: ColorSet.mainColorTheme),
            TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(Icons.play_arrow),
                  SizedBox(width: 8),
                  Text(
                    'User Score',
                    style: TextStyles.headline1RegularWhite,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
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

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Overview',
            style: TextStyles.title1SemiboldWhite,
          ),
          SizedBox(height: 16),
          Text(
            'Mars is a terrestrial planet with a thin atmosphere, and has a crust primarily composed of elements similar to Earth\'s crust, as well as a core made of iron and nickel. Mars has surface features such as impact craters, valleys, dunes, and polar ice caps. It has two small and irregularly shaped moons: Phobos and Deimos.',
            style: TextStyles.text1RegularWhite,
          )
        ],
      ),
    );
  }
}

class _CompositionWidget extends StatelessWidget {
  const _CompositionWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Admin Admin',
                  style: TextStyles.headline1RegularWhite,
                ),
                Text('Director', style: TextStyles.headline1RegularWhite),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Admin Admin',
                  style: TextStyles.headline1RegularWhite,
                ),
                Text('Director', style: TextStyles.headline1RegularWhite),
              ],
            )
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Admin Admin',
                  style: TextStyles.headline1RegularWhite,
                ),
                Text('Director', style: TextStyles.headline1RegularWhite),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Admin Admin',
                  style: TextStyles.headline1RegularWhite,
                ),
                Text('Director', style: TextStyles.headline1RegularWhite),
              ],
            )
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
