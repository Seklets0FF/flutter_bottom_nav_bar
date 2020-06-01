import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}): super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {

  var _currentPage = 0;

  var _pages = [
    Text('1. Страница информации'),
    Text('2. Страница День рождения'),
    Text('3. Страница облако'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom navigation',
      home: Scaffold(
        appBar: AppBar(title: Text('Bottom navigation'),),
        body: Center(
          child: _pages.elementAt(_currentPage),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.announcement),
              title: Text('Информация')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cake),
              title: Text('День рождения')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              title: Text('Облако')
            )
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.blue,
          onTap: (int intIndex) {
            setState(() {
              _currentPage = intIndex;
            });
          },
        ),
      ),
    );
  }
}
