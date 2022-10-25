import 'package:flutter/material.dart';
import 'package:tmdb_app/resources/app_images.dart';
import 'package:tmdb_app/style/box_decoration_style.dart';
import 'package:tmdb_app/style/color_set.dart';
import 'package:tmdb_app/style/text_styles.dart';

class MovieDetailsMainScreenCastWidget extends StatefulWidget {
  const MovieDetailsMainScreenCastWidget({Key? key}) : super(key: key);

  @override
  _MovieDetailsMainScreenCastWidgetState createState() =>
      _MovieDetailsMainScreenCastWidgetState();
}

class _MovieDetailsMainScreenCastWidgetState
    extends State<MovieDetailsMainScreenCastWidget> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: Text(
              'Seriel Cast',
              style: TextStyles.title2Regular,
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              itemExtent: 140,
              itemCount: 20,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: DecoratedBox(
                    decoration: BoxDecorationStyle.boxDecoration,
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(image: AssetImage(AppImages.mars)),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Column(
                                children: const [
                                  Text(
                                    'Admin Admin',
                                    style: TextStyles.headline1Regular,
                                    maxLines: 1,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    'Admin Admin',
                                    style: TextStyles.text1Regular,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 16, 10),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Full Cast & Crew',
                style: TextStyles.title2Regular,
              ),
            ),
          )
        ],
      ),
    );
  }
}
