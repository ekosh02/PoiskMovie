import 'package:flutter/material.dart';
import 'package:tmdb_app/widgets/movie_list/movie_list.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  static final List<Widget> _widgetOptions = <Widget>[
    const Text('News'),
    MovieListWidget(),
    const Text('TV shows'),
  ];

  int _selectedTab = 1;

  void _onSelectTab(int index) {
    if (index == _selectedTab) return;
    _selectedTab = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'TV shows',
          ),
        ],
        onTap: _onSelectTab,
      ),
      body: _widgetOptions[_selectedTab],
    );
  }
}
