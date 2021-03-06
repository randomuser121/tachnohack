import 'package:flutter/material.dart';

/// This Widget is the main application widget.
//class MyApp extends StatelessWidget {
//  static const String _title = 'App';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: MyStatefulWidget(),
//    );
//  }
//}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FittedBox(
        child: Image(image: AssetImage('images/map.jpg')), fit: BoxFit.fill),
    FittedBox(
        child: Image(image: AssetImage('images/img1.jpg')), fit: BoxFit.fill),
    FittedBox(
        child: Image(image: AssetImage('images/omg2.jpg')), fit: BoxFit.fill),
    FittedBox(
        child: Image(image: AssetImage('images/chat.jpg')), fit: BoxFit.fill),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Здоровье'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white38,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text('Местоположение'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Показатели'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            title: Text('Устройство'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Чат'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
