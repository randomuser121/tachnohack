import 'package:flutter/material.dart';

/// This Widget is the main application widget.

class MyStatefulWidget2 extends StatefulWidget {
  MyStatefulWidget2({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget2> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FittedBox(
        child: Image(
          image: AssetImage('images/ekarta.jpg'),
          width: 600,
        ),
        fit: BoxFit.fill),
    FittedBox(
        child: Image(image: AssetImage('images/ehealth.jpg')),
        fit: BoxFit.fill),
    FittedBox(
        child: Image(image: AssetImage('images/eemp.jpg')), fit: BoxFit.fill),
    FittedBox(
        child: Image(image: AssetImage('images/echat.jpg')), fit: BoxFit.fill),
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
            title: Text('Карта'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Здоровье'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Сотрудники'),
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
