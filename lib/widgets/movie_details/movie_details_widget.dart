import 'package:flutter/material.dart';
import 'package:tmdb_app/style/color_set.dart';
import 'package:tmdb_app/widgets/movie_details/movie_details_main_info_widget.dart';
import 'package:tmdb_app/widgets/movie_details/movie_details_main_screen_cast_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;

  const MovieDetailsWidget({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  _MovieDetailsWidgetState createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mars'),
      ),
      body: ColoredBox(
        color: ColorSet.dartTheme,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            MovieDetailsMainInfoWidget(),
            SizedBox(height: 30),
            MovieDetailsMainScreenCastWidget(),
          ],
        ),
      ),
    );
  }
}
