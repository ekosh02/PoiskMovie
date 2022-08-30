import 'package:flutter/material.dart';
import 'package:tmdb_app/style/color_set.dart';
import 'package:tmdb_app/widgets/auth/auth_widget.dart';
import 'package:tmdb_app/widgets/main_screen/main_screen_widget.dart';
import 'package:tmdb_app/widgets/movie_details/movie_details_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: ColorSet.mainColorTheme,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: ColorSet.greyTheme,
            selectedItemColor: ColorSet.whiteTheme,
            backgroundColor: ColorSet.mainColorTheme),
      ),
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
        '/main_screen/movie_details_widget': (context) {
          final argument = ModalRoute.of(context)?.settings.arguments;
          if (argument is int) {
            return MovieDetailsWidget(movieId: argument);
          } else {
            return Scaffold(
              appBar: AppBar(title: const Text('TMDB')),
              body: const Center(
                child: Text('Error'),
              ),
            );
          }
        }
      },
      initialRoute: '/auth',
    );
  }
}
